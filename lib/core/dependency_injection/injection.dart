import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:movie_info/core/network/dio_http_client.dart';
import 'package:movie_info/core/network/http_client.dart';
import 'package:movie_info/core/network/movies_api_request_params.dart';
import 'package:movie_info/core/utils/locale_codes.dart';
import 'package:movie_info/core/utils/tmdb_constants.dart';
import 'package:movie_info/data/data_sources/genre_remote_data_source.dart';
import 'package:movie_info/data/data_sources/movie_remote_data_source.dart';
import 'package:movie_info/data/repositories/genre_repository_impl.dart';
import 'package:movie_info/data/repositories/movie_repository_impl.dart';
import 'package:movie_info/domain/repositories/genres_repository.dart';
import 'package:movie_info/domain/repositories/movie_repository.dart';
import 'package:movie_info/domain/use_cases/get_genres_use_case.dart';
import 'package:movie_info/domain/use_cases/get_popular_movies_use_case.dart';
import 'package:movie_info/domain/use_cases/search_movies.dart';
import 'package:movie_info/presentation/manager/genres_bloc/genres_bloc.dart';
import 'package:movie_info/presentation/manager/movie_bloc/movie_bloc.dart';
import 'package:movie_info/presentation/manager/search_bloc/search_bloc.dart';

final locator = GetIt.instance;

void init() {
  // Use cases
  locator.registerLazySingleton(() => GetGenresUseCase(locator()));
  locator.registerLazySingleton(() => GetPopularMoviesUseCase(locator()));
  locator.registerLazySingleton(() => SearchMovies(locator()));

  // Repository
  locator.registerLazySingleton<GenreRepository>(
    () => GenreRepositoryImpl(remoteDataSource: locator()),
  );
  locator.registerLazySingleton<MovieRepository>(
    () => MovieRepositoryImpl(
      remoteDataSource: locator(),
      genreRepository: locator(),
    ),
  );

  // HTTP client
  locator.registerLazySingleton<HttpClient>(DioHttpClient.new);

  // Data sources
  final moviesApiRequestParams = MoviesApiRequestParams(
    getApiKey: () => TmdbConstants.apiKey,
    localeCode: LocaleCodes.russian,
  );
  locator.registerLazySingleton<GenreRemoteDataSource>(
    () => GenreRemoteDataSourceImpl(
      httpClient: locator(),
      apiRequestParams: moviesApiRequestParams,
    ),
  );
  locator.registerLazySingleton<MovieRemoteDataSource>(
    () => MovieRemoteDataSourceImpl(
      httpClient: locator(),
      apiRequestParams: moviesApiRequestParams,
    ),
  );

  // BLoC
  locator.registerFactory(() => GenresBloc(getGenres: locator()));
  locator.registerFactory(() => MovieBloc(getPopularMovies: locator()));
  locator.registerFactory(() => SearchBloc(searchMovies: locator()));
}
