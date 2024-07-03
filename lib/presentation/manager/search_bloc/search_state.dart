part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState.initial() = _SearchInitialState;

  const factory SearchState.loading({
    required List<MovieEntity> oldMovies,
    required bool isFirstFetch,
  }) = _SearchLoadingState;

  const factory SearchState.loaded({
    required String lastQuery,
    required List<MovieEntity> movies,
    @Default(false) bool hasReachedMax,
  }) = _SearchLoadedState;

  const factory SearchState.error({
    required String message,
  }) = _SearchErrorState;
}
