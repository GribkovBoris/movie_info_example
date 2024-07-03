import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_info/presentation/manager/movie_bloc/movie_bloc.dart';
import 'package:movie_info/presentation/widgets/movie_list_item.dart';

const labelMoviesNotFound = 'Фильмы не найдены';
const labelPopularMovies = 'Популярное';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(labelPopularMovies)),
      body: BlocBuilder<MovieBloc, MovieState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (movies) => movies.isEmpty
                ? const Center(child: Text(labelMoviesNotFound))
                : ListView.builder(
                    itemCount: movies.length,
                    itemBuilder: (context, index) {
                      return MovieListItem(movie: movies[index]);
                    },
                  ),
            error: (message) => Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    message,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  IconButton(
                    onPressed: () {
                      context.read<MovieBloc>().add(const MovieEvent.loadPopular());
                    },
                    iconSize: 40,
                    icon: const Icon(Icons.refresh),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
