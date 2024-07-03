import 'package:dartz/dartz.dart';
import 'package:movie_info/core/errors/failures.dart';
import 'package:movie_info/domain/entities/movie_entity.dart';
import 'package:movie_info/domain/repositories/movie_repository.dart';
import 'package:movie_info/domain/use_cases/use_case.dart';

class SearchMoviesParams {
  final String query;
  final int page;

  SearchMoviesParams({required this.query, this.page = 1});
}

class SearchMovies implements UseCase<MoviesEntity, SearchMoviesParams> {
  final MovieRepository repository;

  SearchMovies(this.repository);

  @override
  Future<Either<Failure, MoviesEntity>> call(SearchMoviesParams params) async {
    return await repository.searchMovies(params.query, page: params.page);
  }
}
