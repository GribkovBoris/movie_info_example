import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_info/presentation/manager/search_bloc/search_bloc.dart';
import 'package:movie_info/presentation/pages/movie_details_page.dart';
import 'package:movie_info/presentation/widgets/circular_indicator.dart';
import 'package:movie_info/presentation/widgets/movies_list.dart';
import 'package:movie_info/presentation/widgets/warning_with_refresh.dart';

const String labelSearchForMovies = 'Поиск';
const String labelInputMovieName = 'Введите название фильма';

class SearchPage extends StatelessWidget {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final searchBloc = context.read<SearchBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(labelSearchForMovies),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: labelInputMovieName,
                suffixIcon: Icon(Icons.search),
              ),
              onSubmitted: (query) {
                searchBloc.add(SearchEvent.searchMovies(query));
              },
            ),
          ),
          Expanded(
            child: BlocBuilder<SearchBloc, SearchState>(
              bloc: searchBloc,
              builder: (context, state) {
                return state.when(
                  initial: () => const Text(''),
                  loading: () {
                    return const Center(child: CircularIndicator(size: 60));
                  },
                  loaded: (movies) {
                    return MoviesList(movies: movies);
                  },
                  error: (message) => WarningWithRefresh(
                    direction: Axis.vertical,
                    iconSize: 40,
                    message: labelFailedToLoad,
                    onRefreshPressed: () {
                      searchBloc.add(SearchEvent.searchMovies(controller.text));
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
