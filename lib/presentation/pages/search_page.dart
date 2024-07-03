import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_info/presentation/manager/search_bloc/search_bloc.dart';

const String labelSearchForMovies = 'Поиск';
const String labelInputMovieName = 'Введите название фильма';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(labelSearchForMovies),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(
                hintText: labelInputMovieName,
                suffixIcon: Icon(Icons.search),
              ),
              onSubmitted: (query) {
                // context.read<SearchBloc>().add();
              },
            ),
          ),
          Expanded(
            child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                // if (state is SearchLoading) {
                //   return Center(child: CircularProgressIndicator());
                // } else if (state is SearchLoaded) {
                //   return ListView.builder(
                //     itemCount: state.movies.length,
                //     itemBuilder: (context, index) {
                //       return MovieListItem(movie: state.movies[index]);
                //     },
                //   );
                // } else if (state is SearchError) {
                //   return Center(child: Text(state.message));
                // }
                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }
}