import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_info/core/errors/failures.dart';
import 'package:movie_info/domain/entities/movie_entity.dart';
import 'package:movie_info/domain/use_cases/get_popular_movies_use_case.dart';

part 'movie_bloc.freezed.dart';

part 'movie_event.dart';

part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final GetPopularMoviesUseCase getPopularMovies;

  MovieBloc({required this.getPopularMovies})
      : super(const MovieState.initial()) {
    on<MovieEvent>((event, emit) async {
      switch (event) {
        case _MoviesLoadPopularEvent():
          emit(const MovieState.loading());
          final failureOrMovies = await getPopularMovies();
          failureOrMovies.fold(
            (failure) =>
                emit(MovieState.error(message: _mapFailureToMessage(failure))),
            (movies) => emit(MovieState.loaded(movies: movies)),
          );
        case _MoviesLoadMoreEvent():
        case _MoviesRefreshEvent():
        case _MovieSelectedEvent():
      }
    });
  }

  String _mapFailureToMessage(Failure failure) {
    return failure.toString();
  }
}
