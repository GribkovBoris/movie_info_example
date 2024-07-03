part of 'search_bloc.dart';

sealed class SearchEvent extends Equatable {
  const SearchEvent();

  const factory SearchEvent.searchMovies(String query) = SearchMoviesEvent;
  factory SearchEvent.clearSearch() = ClearSearchEvent;
  factory SearchEvent.loadMoreMovies() = LoadMoreSearchResultsEvent;

  @override
  List<Object> get props => [];
}

class SearchMoviesEvent extends SearchEvent {
  final String query;

  const SearchMoviesEvent(this.query);

  @override
  List<Object> get props => [query];
}

class ClearSearchEvent extends SearchEvent {}

class LoadMoreSearchResultsEvent extends SearchEvent {}