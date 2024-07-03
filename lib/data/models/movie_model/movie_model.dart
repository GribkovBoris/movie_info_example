import 'package:json_annotation/json_annotation.dart';
import 'package:movie_info/domain/entities/movie_entity.dart';

part 'movie_model.g.dart';

class MoviesModel {
  final List<MovieModel> movies;
  final int page;
  final int totalPages;

  MoviesModel({
    required this.movies,
    required this.page,
    required this.totalPages,
  });

  factory MoviesModel.fromJson(Map<String, dynamic> json) {
    final results = json['results'] as List<dynamic>;
    final page = json['page'] as int;
    final totalPages = json['total_pages'] as int;
    final movies = <MovieModel>[];
    results.forEach(
      (movie) {
        try {
          final movieMap = movie as Map<String, dynamic>;
          final movieEntity = MovieModel.fromJson(movieMap);
          movies.add(movieEntity);
        } catch (_) {
          // If the movie details has no required fields - skip it
        }
      },
    );
    return MoviesModel(
      movies: movies,
      page: page,
      totalPages: totalPages,
    );
  }

  MoviesEntity toEntity() {
    return MoviesEntity(
      movies: movies.map((genreModel) => genreModel.toEntity()).toList(),
      page: page,
      totalPages: totalPages,
    );
  }
}

@JsonSerializable()
class MovieModel {
  final int id;
  final String title;
  final String? overview;

  @JsonKey(name: 'poster_path')
  final String? posterPath;

  @JsonKey(name: 'vote_average')
  final double? voteAverage;

  @JsonKey(name: 'release_date')
  final String? releaseDate;

  @JsonKey(name: 'genre_ids')
  final List<int>? genreIds;

  MovieModel({
    required this.id,
    required this.title,
    required this.posterPath,
    required this.voteAverage,
    required this.overview,
    required this.genreIds,
    required this.releaseDate,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieModelToJson(this);

  static List<MovieModel> listFromJson(List<dynamic> list) {
    return list
        .map((json) => MovieModel.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  MovieEntity toEntity() {
    return MovieEntity(
      id: id,
      title: title,
      genreIds: genreIds,
      posterPath: posterPath,
      voteAverage: voteAverage,
      overview: overview,
      releaseDate: releaseDate,
    );
  }
}
