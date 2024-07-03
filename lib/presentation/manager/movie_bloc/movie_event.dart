part of 'movie_bloc.dart';

sealed class MovieEvent extends Equatable {
  const MovieEvent();

  const factory MovieEvent.loadPopular() = _MoviesLoadPopularEvent;

  const factory MovieEvent.loadMore() = _MoviesLoadMoreEvent;

  @override
  List<Object> get props => [];
}

class _MoviesLoadPopularEvent extends MovieEvent {
  const _MoviesLoadPopularEvent();
}

class _MoviesLoadMoreEvent extends MovieEvent {
  const _MoviesLoadMoreEvent();
}
