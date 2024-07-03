part of 'movie_bloc.dart';

@freezed
abstract class MovieState with _$MovieState {
  const factory MovieState.initial() = _MovieInitialState;

  const factory MovieState.loading({
     List<MovieEntity>? lastMovies,
  }) = _MovieLoadingState;

  const factory MovieState.loaded({
    required List<MovieEntity> movies,
    required bool finalizedMoviesList,
  }) = _MovieLoadedState;

  const factory MovieState.error({required String message}) = _MovieErrorState;
}
