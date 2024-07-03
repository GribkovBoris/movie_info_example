import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_info/core/utils/tmdb_constants.dart';
import 'package:movie_info/domain/entities/genres_entity.dart';
import 'package:movie_info/domain/entities/movie_entity.dart';
import 'package:movie_info/presentation/manager/genres_bloc/genres_bloc.dart';
import 'package:movie_info/presentation/widgets/movie_list_item.dart';

const labelRating = 'Рейтинг';
const labelReleaseDate = 'Дата выхода';
const labelGenres = 'Жанр';
const labelOverview = 'Описание';
const labelFailedToLoad = 'Ошибка загрузки';

class MovieDetailsPage extends StatelessWidget {
  final MovieEntity movie;
  final Widget? preloadedImage;

  const MovieDetailsPage({
    required this.movie,
    Key? key,
    this.preloadedImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: moviePosterTag(movie.id),
              child: CachedNetworkImage(
                imageUrl: TmdbConstants.getPosterUrl(movie.posterPath),
                placeholder: (context, url) => SizedBox(
                  width: double.infinity,
                  child: preloadedImage ??
                      const Center(child: CircularProgressIndicator()),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  Text('$labelRating: ${movie.voteAverage.toStringAsFixed(1)}'),
                  const SizedBox(height: 8),
                  Text(
                      '$labelReleaseDate: ${movie.releaseDate.replaceAll('-', '.')}'),
                  const SizedBox(height: 8),
                  BlocBuilder<GenresBloc, GenresState>(
                    builder: (context, state) {
                      return Wrap(
                        children: [
                          const Text('$labelGenres: '),
                          state.when(
                            initial: () {
                              return const SizedBox.shrink();
                            },
                            loading: _getCircularIndicator,
                            loaded: (genres) {
                              final genreStrings = <String>[];
                              movie.genreIds.forEach(
                                (genreId) {
                                  genres.forEach(
                                    (genre) {
                                      if (genre.id == genreId) {
                                        genreStrings.add(genre.name);
                                      }
                                    },
                                  );
                                },
                              );
                              return Wrap(
                                children: [
                                  ...genreStrings.map((e) => Text('$e, '),),
                                ],
                              );
                            },
                            error: (message) {
                              return Row(
                                children: [
                                  const Text(labelFailedToLoad),
                                  const SizedBox(width: 8),
                                  _getCircularIndicator(),
                                ],
                              );
                            },
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '$labelOverview',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(movie.overview),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getCircularIndicator() {
    return const SizedBox(
      width: 15,
      height: 15,
      child: CircularProgressIndicator(),
    );
  }
}
