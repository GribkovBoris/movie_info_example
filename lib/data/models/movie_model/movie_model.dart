import 'package:json_annotation/json_annotation.dart';
import 'package:movie_info/domain/entities/movie_entity.dart';

part 'movie_model.g.dart';

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
