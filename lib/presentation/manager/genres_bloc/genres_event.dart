part of 'genres_bloc.dart';

sealed class GenresEvent {
  const GenresEvent();

  const factory GenresEvent.load() = _GenresLoadEvent;
}

class _GenresLoadEvent extends GenresEvent {
  const _GenresLoadEvent();
}
