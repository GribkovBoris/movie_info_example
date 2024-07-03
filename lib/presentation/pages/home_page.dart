import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_info/domain/entities/movie_entity.dart';
import 'package:movie_info/presentation/manager/movie_bloc/movie_bloc.dart';
import 'package:movie_info/presentation/pages/movie_details_page.dart';
import 'package:movie_info/presentation/widgets/circular_indicator.dart';
import 'package:movie_info/presentation/widgets/movies_list.dart';
import 'package:movie_info/presentation/widgets/warning_with_refresh.dart';

const labelMoviesNotFound = 'Фильмы не найдены';
const labelPopularMovies = 'Популярное';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(labelPopularMovies)),
      body: BlocBuilder<MovieBloc, MovieState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: (movies) {
              if(movies != null){
                return MoviesList(
                  movies: movies,
                  onOverscroll: () async {
                    context.read<MovieBloc>().add(const MovieEvent.loadMore());
                  },
                  finalizedMoviesList: false,
                );
              }else {
                return const Center(child: CircularIndicator(size: 60));
              }
            },
            loaded: (movies, finalizedMoviesList) {
              return MoviesList(
                movies: movies,
                onOverscroll: () async {
                  context.read<MovieBloc>().add(const MovieEvent.loadMore());
                },
                finalizedMoviesList: finalizedMoviesList,
              );
            },
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
