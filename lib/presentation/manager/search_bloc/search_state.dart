part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState.initial() = _SearchInitialState;

  const factory SearchState.loading({
    List<MovieEntity>? lastMovies,
  }) = _SearchLoadingState;

  const factory SearchState.loaded({
    required String query,
    required List<MovieEntity> movies,
    required bool finalizedMoviesList,
  }) = _SearchLoadedState;

  const factory SearchState.error({
    required String message,
  }) = _SearchErrorState;
}
