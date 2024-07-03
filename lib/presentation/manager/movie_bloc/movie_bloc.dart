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
  int? _lastPageLoaded;

  MovieBloc({required this.getPopularMovies})
      : super(const MovieState.initial()) {
    on<MovieEvent>((event, emit) async {
      switch (event) {
        case _MoviesLoadPopularEvent():
          print('_MoviesLoadPopularEvent');
          if (state is _MovieLoadingState) {
            return;
          }
          emit(const MovieState.loading());
          await _getAndEmitMovies(emit: emit);
        case _MoviesLoadMoreEvent():
          print('_MoviesLoadMoreEvent');
          final blocState = state;
          print('blocState: $blocState');
          if (blocState is _MovieLoadingState) {
            return;
          }
          if (blocState is! _MovieLoadedState) {
            add(const MovieEvent.loadPopular());
          } else {
            final lastMovies = <MovieEntity>[];

            lastMovies.addAll(blocState.movies);

            emit(MovieState.loading(lastMovies: lastMovies));
            await _getAndEmitMovies(
              page: (_lastPageLoaded ?? 1) + 1,
              emit: emit,
              lastMovies: lastMovies,
            );
          }
      }
    });
  }

  String _mapFailureToMessage(Failure failure) {
    return failure.toString();
  }

  Future<void> _getAndEmitMovies({
    required Emitter<MovieState> emit,
    int page = 1,
    List<MovieEntity>? lastMovies,
  }) async {
    print('page: $page');
    final failureOrMovies = await getPopularMovies(page: page);
    failureOrMovies.fold(
      (failure) {
        emit(MovieState.error(message: _mapFailureToMessage(failure)));
      },
      (moviesModel) {
        final finalizedMoviesList = moviesModel.page == moviesModel.totalPages;
        _lastPageLoaded = moviesModel.page;
        print('moviesModel.totalPages: ${moviesModel.totalPages}');
        print('_lastPageLoaded: $_lastPageLoaded');
        final newMovies = List<MovieEntity>.from(lastMovies ?? [])
          ..addAll(moviesModel.movies);
        emit(MovieState.loaded(
          movies: newMovies,
          finalizedMoviesList: finalizedMoviesList,
        ));
      },
    );
  }
}
