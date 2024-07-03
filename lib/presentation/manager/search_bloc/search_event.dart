part of 'search_bloc.dart';

sealed class SearchEvent extends Equatable {
  const SearchEvent();

  const factory SearchEvent.searchMovies(String query) = _SearchMoviesEvent;

  const factory SearchEvent.loadMore() = _SearchLoadMoreEvent;

  @override
  List<Object> get props => [];
}

class _SearchMoviesEvent extends SearchEvent {
  final String query;

  const _SearchMoviesEvent(this.query);

  @override
  List<Object> get props => [query];
}

class _SearchLoadMoreEvent extends SearchEvent {
  const _SearchLoadMoreEvent();
}
