import 'package:flutter/material.dart';
import 'package:movie_info/domain/entities/movie_entity.dart';
import 'package:movie_info/presentation/pages/home_page.dart';
import 'package:movie_info/presentation/widgets/movie_list_item.dart';

class MoviesList extends StatelessWidget {
  final List<MovieEntity> movies;

  const MoviesList({
    required this.movies,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return movies.isEmpty
        ? const Center(child: Text(labelMoviesNotFound))
        : ListView.builder(
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return MovieListItem(movie: movies[index]);
            },
          );
  }
}
