import 'package:dartz/dartz.dart';
import 'package:movie_info/core/errors/failures.dart';
import 'package:movie_info/domain/entities/movie_entity.dart';

abstract class MovieRepository {
  Future<Either<Failure, List<MovieEntity>>> getPopularMovies();
  Future<Either<Failure, List<MovieEntity>>> searchMovies(String query);
}