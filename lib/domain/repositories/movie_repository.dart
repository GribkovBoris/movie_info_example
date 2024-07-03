import 'package:dartz/dartz.dart';
import 'package:movie_info/core/errors/failures.dart';
import 'package:movie_info/domain/entities/movie_entity.dart';

abstract class MovieRepository {
  Future<Either<Failure, MoviesEntity>> getPopularMovies({int page = 1});

  Future<Either<Failure, MoviesEntity>> searchMovies(String query,
      {int page = 1});
}
