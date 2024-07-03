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

  SearchBloc({required this.searchMovies})
      : super(const SearchState.initial()) {
    on<SearchEvent>((event, emit) async {
      switch (event) {
        case SearchMoviesEvent():
          if (event.query.trim().isEmpty) {
            emit(const SearchState.loaded(movies: []));
          }
          emit(const SearchState.loading());
          final failureOrMovies = await searchMovies(
            SearchMoviesParams(query: event.query),
          );
          failureOrMovies.fold(
            (failure) => emit(
              SearchState.error(message: _mapFailureToMessage(failure)),
            ),
            (movies) => emit(SearchState.loaded(movies: movies)),
          );
      }
    });
  }

  String _mapFailureToMessage(Failure failure) {
    return failure.toString();
  }
}
