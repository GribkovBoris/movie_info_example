import 'package:dartz/dartz.dart';
import 'package:movie_info/core/errors/failures.dart';
import 'package:movie_info/domain/entities/genres_entity.dart';

abstract class GenreRepository {
  Future<Either<Failure, List<GenreEntity>>> getGenres();
}
