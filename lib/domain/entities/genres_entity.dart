class GenresEntity {
  final List<GenreEntity> genres;

  GenresEntity({required this.genres});
}

class GenreEntity {
  final int id;
  final String name;

  GenreEntity({required this.id, required this.name});
}
