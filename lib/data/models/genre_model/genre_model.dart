import 'package:json_annotation/json_annotation.dart';
import 'package:movie_info/domain/entities/genres_entity.dart';

part 'genre_model.g.dart';

@JsonSerializable()
class GenresModel {
  final List<GenreModel> genres;

  GenresModel({required this.genres});

  factory GenresModel.fromJson(Map<String, dynamic> json) =>
      _$GenresModelFromJson(json);

  Map<String, dynamic> toJson() => _$GenresModelToJson(this);

  GenresEntity toEntity() {
    return GenresEntity(
        genres: genres.map((genreModel) => genreModel.toEntity()).toList());
  }
}

@JsonSerializable()
class GenreModel {
  final int id;
  final String name;

  GenreModel({required this.id, required this.name}) : super();

  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      _$GenreModelFromJson(json);

  Map<String, dynamic> toJson() => _$GenreModelToJson(this);

  GenreEntity toEntity() {
    return GenreEntity(id: id, name: name);
  }
}
