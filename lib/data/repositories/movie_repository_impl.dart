import 'package:dartz/dartz.dart';
import 'package:movie_info/core/errors/exceptions.dart';
import 'package:movie_info/core/errors/failures.dart';
import 'package:movie_info/data/data_sources/movie_remote_data_source.dart';
import 'package:movie_info/domain/entities/movie_entity.dart';
import 'package:movie_info/domain/repositories/genres_repository.dart';
import 'package:movie_info/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteDataSource remoteDataSource;
  final GenreRepository genreRepository;

  MovieRepositoryImpl({
    required this.remoteDataSource,
    required this.genreRepository,
  });

  @override
  Future<Either<Failure, List<MovieEntity>>> getPopularMovies() async {
    try {
      final remoteMovies = await remoteDataSource.getPopularMovies();
      return Right(remoteMovies.map((e) => e.toEntity()).toList());
    } on NetworkException catch (error) {
      return Left(NetworkFailure());
    } catch (error) {
      return Left(OtherFailure());
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> searchMovies(String query) async {
    try {
      final remoteMovies = await remoteDataSource.searchMovies(query);
      return Right(remoteMovies.map((e) => e.toEntity()).toList());
    } on NetworkException catch (error) {
      return Left(NetworkFailure());
    } catch (error) {
      return Left(OtherFailure());
    }
  }
}
