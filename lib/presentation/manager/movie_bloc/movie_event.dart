part of 'movie_bloc.dart';

sealed class MovieEvent extends Equatable {
  const MovieEvent();

  const factory MovieEvent.loadPopular({int page}) = _MoviesLoadPopularEvent;

  const factory MovieEvent.loadMore() = _MoviesLoadMoreEvent;

  @override
  List<Object> get props => [];
}

class _MoviesLoadPopularEvent extends MovieEvent {
  final int page;

  const _MoviesLoadPopularEvent({this.page = 1});

  @override
  List<Object> get props => [page];
}

class _MoviesLoadMoreEvent extends MovieEvent {
  const _MoviesLoadMoreEvent();
}
