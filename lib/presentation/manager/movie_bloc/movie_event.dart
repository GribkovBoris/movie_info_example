part of 'movie_bloc.dart';

sealed class MovieEvent extends Equatable {
  const MovieEvent();

  const factory MovieEvent.loadPopular({int page}) = _MoviesLoadPopularEvent;

  const factory MovieEvent.refresh() = _MoviesRefreshEvent;

  const factory MovieEvent.loadMore() = _MoviesLoadMoreEvent;

  const factory MovieEvent.selected(int movieId) = _MovieSelectedEvent;

  @override
  List<Object> get props => [];
}

class _MoviesLoadPopularEvent extends MovieEvent {
  final int page;

  const _MoviesLoadPopularEvent({this.page = 1});

  @override
  List<Object> get props => [page];
}

class _MoviesRefreshEvent extends MovieEvent {
  const _MoviesRefreshEvent();
}

class _MoviesLoadMoreEvent extends MovieEvent {
  const _MoviesLoadMoreEvent();
}

class _MovieSelectedEvent extends MovieEvent {
  final int movieId;

  const _MovieSelectedEvent(this.movieId);

  @override
  List<Object> get props => [movieId];
}
