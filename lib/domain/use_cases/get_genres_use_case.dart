import 'package:dartz/dartz.dart';
import 'package:movie_info/core/errors/failures.dart';
import 'package:movie_info/domain/entities/genres_entity.dart';
import 'package:movie_info/domain/repositories/genres_repository.dart';

class GetGenresUseCase {
  final GenreRepository genreRepository;

  GetGenresUseCase(this.genreRepository);

  Future<Either<Failure, List<GenreEntity>>> call() => genreRepository.getGenres();
}