import 'package:movie_info/core/errors/exceptions.dart';
import 'package:movie_info/core/network/basic_headers.dart';
import 'package:movie_info/core/network/http_client.dart';
import 'package:movie_info/core/network/movies_api_request_params.dart';
import 'package:movie_info/core/utils/tmdb_constants.dart';
import 'package:movie_info/data/models/movie_model/movie_model.dart';

abstract class MovieRemoteDataSource {
  Future<List<MovieModel>> getPopularMovies();

  Future<List<MovieModel>> searchMovies(String query);

  Future<MovieModel> getMovieDetails(int id);
}

class MovieRemoteDataSourceImpl implements MovieRemoteDataSource {
  final HttpClient httpClient;
  final MoviesApiRequestParams apiRequestParams;

  MovieRemoteDataSourceImpl({
    required this.httpClient,
    required this.apiRequestParams,
  });

  @override
  Future<List<MovieModel>> getPopularMovies() async {
    final url = TmdbConstants.getPopularMoviesUrl();
    print(url);
    final response = await httpClient.get<dynamic>(
      url,
      queryParameters: {'language': apiRequestParams.localeCode},
      headers: BasicHttpHeaders.getBasicWithToken(apiRequestParams.getApiKey()),
    );
    print(response.data);
    if (response.statusCode == 200) {
      return MovieModel.listFromJson(response.data['results'] as List<dynamic>);
    } else {
      throw NetworkException();
    }
  }

  @override
  Future<List<MovieModel>> searchMovies(String query) async {
    final response = await httpClient.get<dynamic>(
      '${TmdbConstants.baseUrl}${TmdbConstants.searchMoviesEndpoint}',
      queryParameters: {'query': query},
      headers: BasicHttpHeaders.getBasicWithToken(apiRequestParams.getApiKey()),
    );

    if (response.statusCode == 200) {
      return (response.data['results'] as List<dynamic>)
          .map((movie) => MovieModel.fromJson(movie as Map<String, dynamic>))
          .toList();
    } else {
      throw NetworkException();
    }
  }

  @override
  Future<MovieModel> getMovieDetails(int id) async {
    final response = await httpClient.get<dynamic>(
      '${TmdbConstants.baseUrl}${TmdbConstants.movieDetailsEndpoint}/$id',
      headers: BasicHttpHeaders.getBasicWithToken(apiRequestParams.getApiKey()),
    );

    if (response.statusCode == 200) {
      return MovieModel.fromJson(response.data as Map<String, dynamic>);
    } else {
      throw NetworkException();
    }
  }
}
