class MoviesEntity {
  final int page;
  final int totalPages;
  final List<MovieEntity> movies;

  MoviesEntity({
    required this.movies,
    required this.page,
    required this.totalPages,
  });
}

class MovieEntity {
  final int id;
  final String title;
  final String? posterPath;
  final double? voteAverage;
  final String? overview;
  final List<int>? genreIds;
  final String? releaseDate;

  MovieEntity({
    required this.id,
    required this.title,
    required this.posterPath,
    required this.voteAverage,
    required this.overview,
    required this.genreIds,
    required this.releaseDate,
  });
}
