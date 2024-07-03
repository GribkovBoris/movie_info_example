import 'package:movie_info/core/errors/exceptions.dart';
import 'package:movie_info/core/network/basic_headers.dart';
import 'package:movie_info/core/network/http_client.dart';
import 'package:movie_info/core/network/movies_api_request_params.dart';
import 'package:movie_info/core/utils/tmdb_constants.dart';
import 'package:movie_info/data/models/movie_model/movie_model.dart';

abstract class MovieRemoteDataSource {
  Future<List<MovieModel>> getPopularMovies();

  Future<List<MovieModel>> searchMovies(String query);
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
      queryParameters: _getBasicQueryParams(),
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
    print('searchMovies(String query)');
    print('url: ${TmdbConstants.searchMoviesUrl()}');

    final response = await httpClient.get<dynamic>(
      TmdbConstants.searchMoviesUrl(),
      queryParameters: {
        ..._getBasicQueryParams(),
        'query': query,
      },
      headers: BasicHttpHeaders.getBasicWithToken(apiRequestParams.getApiKey()),
    );
    print('response: ${response}');

    if (response.statusCode == 200) {
      final results = response.data['results'] as List<dynamic>;
      final movies = results.map((movie) {
        final movieMap = movie as Map<String, dynamic>;
        try{
          final movieEntity = MovieModel.fromJson(movieMap);
          return movieEntity;
        } catch (e) {
          print('movie: $movie');
          print('movieMap: $movieMap');
          rethrow;
        }
      }).toList();
      return movies;
    } else {
      throw NetworkException();
    }
  }

  Map<String, String> _getBasicQueryParams() {
    return {'language': apiRequestParams.localeCode};
  }
}
