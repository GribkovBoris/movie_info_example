import 'package:dartz/dartz.dart';
import 'package:movie_info/core/errors/failures.dart';
import 'package:movie_info/domain/entities/movie_entity.dart';
import 'package:movie_info/domain/repositories/movie_repository.dart';
import 'package:movie_info/domain/use_cases/use_case.dart';

class SearchMoviesParams {
  final String query;

  SearchMoviesParams({required this.query});
}

class SearchMovies implements UseCase<List<MovieEntity>, SearchMoviesParams> {
  final MovieRepository repository;

  SearchMovies(this.repository);

  @override
  Future<Either<Failure, List<MovieEntity>>> call(SearchMoviesParams params) async {
    return await repository.searchMovies(params.query);
  }
}