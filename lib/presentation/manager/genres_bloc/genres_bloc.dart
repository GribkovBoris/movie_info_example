import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_info/domain/entities/genres_entity.dart';
import 'package:movie_info/domain/use_cases/get_genres_use_case.dart';

part 'genres_event.dart';

part 'genres_state.dart';

part 'genres_bloc.freezed.dart';

class GenresBloc extends Bloc<GenresEvent, GenresState> {
  final GetGenresUseCase getGenres;

  GenresBloc({required this.getGenres}) : super(const GenresState.initial()) {
    on<GenresEvent>((event, emit) async {
      switch (event) {
        case _GenresLoadEvent():
          emit(const GenresState.loading());
          print('GenresBloc');
          final failureOrMovies = await getGenres();
          failureOrMovies.fold(
            (failure) => emit(GenresState.error(message: failure.toString())),
            (genres) => emit(GenresState.loaded(genres: genres)),
          );
      }
    });
  }
}
