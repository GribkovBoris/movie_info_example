part of 'genres_bloc.dart';

@freezed
class GenresState with _$GenresState {
  const factory GenresState.initial() = _GenresInitialState;

  const factory GenresState.loading() = _GenresLoadingState;

  const factory GenresState.loaded({required List<GenreEntity> genres}) =
      _GenresLoadedState;

  const factory GenresState.error({required String message}) =
      _GenresErrorState;
}
