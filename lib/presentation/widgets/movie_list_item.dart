import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_info/core/utils/tmdb_constants.dart';
import 'package:movie_info/domain/entities/movie_entity.dart';
import 'package:movie_info/presentation/pages/movie_details_page.dart';

String moviePosterTag(int id) => 'movie_poster_$id';

class MovieListItem extends StatelessWidget {
  final MovieEntity movie;

  const MovieListItem({required this.movie, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const progressCircleSize = 20.0;
    const imageWidth = 80.0;
    const imageHeight = 120.0;

    final image = CachedNetworkImage(
      imageUrl: TmdbConstants.getPosterUrl(
        movie.posterPath,
        quality: TmdbQuality.w92,
      ),
      placeholder: (context, url) => const Center(
        child: SizedBox(
          width: progressCircleSize,
          height: progressCircleSize,
          child: CircularProgressIndicator(),
        ),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
      fit: BoxFit.fitWidth,
    );

    return Card(
      elevation: 2,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MovieDetailsPage(
                movie: movie,
                preloadedImage: image,
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: moviePosterTag(movie.id),
                child: SizedBox(
                  width: imageWidth,
                  height: imageHeight,
                  child: image,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movie.title,
                      style: Theme.of(context).textTheme.titleLarge,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '$labelRating: ${movie.voteAverage.toStringAsFixed(1)}',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
