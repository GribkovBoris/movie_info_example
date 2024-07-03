import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_info/presentation/manager/movie_bloc/movie_bloc.dart';
import 'package:movie_info/presentation/pages/movie_details_page.dart';
import 'package:movie_info/presentation/widgets/circular_indicator.dart';
import 'package:movie_info/presentation/widgets/movies_list.dart';
import 'package:movie_info/presentation/widgets/warning_with_refresh.dart';

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
            loading: () => const Center(child: CircularIndicator(size: 60)),
            loaded: (movies) => MoviesList(movies: movies),
            error: (message) => Center(
              child: WarningWithRefresh(
                direction: Axis.vertical,
                iconSize: 40,
                onRefreshPressed: () {
                  context.read<MovieBloc>().add(const MovieEvent.loadPopular());
                },
                message: labelFailedToLoad,
              ),
            ),
          );
        },
      ),
    );
  }
}
