import 'package:dartz/dartz.dart';
import 'package:movie_info/core/errors/exceptions.dart';
import 'package:movie_info/core/errors/failures.dart';
import 'package:movie_info/data/data_sources/movie_remote_data_source.dart';
import 'package:movie_info/domain/entities/movie_entity.dart';
import 'package:movie_info/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteDataSource remoteDataSource;

  MovieRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, MoviesEntity>> getPopularMovies({int page = 1}) async {
    try {
      final remoteMovies = await remoteDataSource.getPopularMovies(page: page);
      return Right(remoteMovies.toEntity());
    } on NetworkException catch (_) {
      return Left(NetworkFailure());
    } catch (error) {
      return Left(OtherFailure());
    }
  }

  @override
  Future<Either<Failure, MoviesEntity>> searchMovies(String query,
      {int page = 1}) async {
    try {
      final remoteMovies =
          await remoteDataSource.searchMovies(query, page: page);
      return Right(remoteMovies.toEntity());
    } on NetworkException catch (_) {
      return Left(NetworkFailure());
    } catch (error) {
      return Left(OtherFailure());
    }
  }
}
