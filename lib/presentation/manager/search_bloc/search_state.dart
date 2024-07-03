part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState.initial() = _SearchInitialState;

  const factory SearchState.loading() = _SearchLoadingState;

  const factory SearchState.loaded({
    required List<MovieEntity> movies,
  }) = _SearchLoadedState;

  const factory SearchState.error({
    required String message,
  }) = _SearchErrorState;
}
