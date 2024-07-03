import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_info/core/errors/failures.dart';
import 'package:movie_info/domain/entities/movie_entity.dart';
import 'package:movie_info/domain/use_cases/search_movies.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchMovies searchMovies;
  int? _lastPageLoaded;

  SearchBloc({required this.searchMovies})
      : super(const SearchState.initial()) {
    on<SearchEvent>((event, emit) async {
      switch (event) {
        case _SearchMoviesEvent():
          if (event.query.trim().isEmpty) {
            emit(const SearchState.loaded(
                movies: [], query: '', finalizedMoviesList: true));
          }
          if (state is _SearchLoadingState) {
            return;
          }
          emit(const SearchState.loading());
          await _getAndEmitMovies(emit: emit, query: event.query);

        case _SearchLoadMoreEvent():
          final blocState = state;
          if (blocState is _SearchLoadingState) {
            return;
          }
          if (blocState is! _SearchLoadedState) {
            // TODO(Boris): what to do?
          } else {
            final lastMovies = <MovieEntity>[];

            lastMovies.addAll(blocState.movies);

            emit(SearchState.loading(lastMovies: lastMovies));
            await _getAndEmitMovies(
              page: (_lastPageLoaded ?? 1) + 1,
              emit: emit,
              lastMovies: lastMovies,
              query: blocState.query,
            );
          }
      }
    });
  }

  String _mapFailureToMessage(Failure failure) {
    return failure.toString();
  }

  Future<void> _getAndEmitMovies({
    required Emitter<SearchState> emit,
    required String query,
    int page = 1,
    List<MovieEntity>? lastMovies,
  }) async {
    final failureOrMovies = await searchMovies(SearchMoviesParams(
      query: query,
      page: page,
    ));
    failureOrMovies.fold(
      (failure) {
        emit(SearchState.error(message: _mapFailureToMessage(failure)));
      },
      (moviesModel) {
        final finalizedMoviesList = moviesModel.page == moviesModel.totalPages;
        _lastPageLoaded = moviesModel.page;
        final newMovies = List<MovieEntity>.from(lastMovies ?? [])
          ..addAll(moviesModel.movies);
        emit(SearchState.loaded(
          movies: newMovies,
          finalizedMoviesList: finalizedMoviesList,
          query: query,
        ));
      },
    );
  }
}
