import 'package:dartz/dartz.dart';
import 'package:movie_info/core/errors/exceptions.dart';
import 'package:movie_info/core/errors/failures.dart';
import 'package:movie_info/data/data_sources/genre_remote_data_source.dart';
import 'package:movie_info/domain/entities/genres_entity.dart';
import 'package:movie_info/domain/repositories/genres_repository.dart';

class GenreRepositoryImpl implements GenreRepository {
  final GenreRemoteDataSource remoteDataSource;

  GenreRepositoryImpl({required this.remoteDataSource});

  List<GenreEntity>? genres;

  @override
  Future<Either<Failure, List<GenreEntity>>> getGenres() async {
    try {
      if (genres != null) {
        return Right(genres!);
      }
      final genreModels = await remoteDataSource.getGenres();
      final resultGenres =
          genreModels.map((model) => model.toEntity()).toList();
      genres = resultGenres;
      return Right(resultGenres);
    } on NetworkException catch (_) {
      return Left(NetworkFailure());
    } catch (e) {
      return Left(OtherFailure());
    }
  }
}
