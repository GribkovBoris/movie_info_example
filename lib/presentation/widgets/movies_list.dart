import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_info/domain/entities/movie_entity.dart';
import 'package:movie_info/presentation/manager/movie_bloc/movie_bloc.dart';
import 'package:movie_info/presentation/pages/home_page.dart';
import 'package:movie_info/presentation/widgets/circular_indicator.dart';
import 'package:movie_info/presentation/widgets/movie_list_item.dart';

class MoviesList extends StatefulWidget {
  final List<MovieEntity> movies;
  final bool finalizedMoviesList;
  final VoidCallback? onOverscroll;

  const MoviesList({
    required this.movies,
    this.finalizedMoviesList = true,
    this.onOverscroll,
    super.key,
  });

  @override
  State<MoviesList> createState() => _MoviesListState();
}

class _MoviesListState extends State<MoviesList> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant MoviesList oldWidget) {
    setState(() {
      _isLoading = false;
    });
    super.didUpdateWidget(oldWidget);
  }

  void _onScroll() {
    if (!widget.finalizedMoviesList &&
        widget.onOverscroll != null &&
        !_isLoading) {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 200) {
        setState(() {
          _isLoading = true;
          widget.onOverscroll!();
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.movies.isEmpty
        ? const Center(child: Text(labelMoviesNotFound))
        : ListView.builder(
            controller: _scrollController,
            itemCount: widget.movies.length + 1,
            itemBuilder: (context, index) {
              if (index < widget.movies.length) {
                return MovieListItem(movie: widget.movies[index]);
              } else if (_isLoading) {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(child: CircularIndicator(size: 24)),
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          );
  }
}
