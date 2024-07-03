part of 'search_bloc.dart';

sealed class SearchEvent extends Equatable {
  const SearchEvent();

  const factory SearchEvent.searchMovies(String query) = SearchMoviesEvent;

  @override
  List<Object> get props => [];
}

class SearchMoviesEvent extends SearchEvent {
  final String query;

  const SearchMoviesEvent(this.query);

  @override
  List<Object> get props => [query];
}
