import 'package:movie_info/core/errors/exceptions.dart';
import 'package:movie_info/core/network/basic_headers.dart';
import 'package:movie_info/core/network/http_client.dart';
import 'package:movie_info/core/network/movies_api_request_params.dart';
import 'package:movie_info/core/utils/tmdb_constants.dart';
import 'package:movie_info/data/models/movie_model/movie_model.dart';

abstract class MovieRemoteDataSource {
  Future<MoviesModel> getPopularMovies({int page = 1});

  Future<MoviesModel> searchMovies(String query, {int page = 1});
}

class MovieRemoteDataSourceImpl implements MovieRemoteDataSource {
  final HttpClient httpClient;
  final MoviesApiRequestParams apiRequestParams;

  MovieRemoteDataSourceImpl({
    required this.httpClient,
    required this.apiRequestParams,
  });

  MoviesModel _parseMoviesResponse(HttpResponse<dynamic> response){
    if (response.statusCode == 200) {
      final moviesModel =
      MoviesModel.fromJson(response.data as Map<String, dynamic>);
      return moviesModel;
    } else {
      throw NetworkException();
    }
  }

  @override
  Future<MoviesModel> getPopularMovies({int page = 1}) async {
    final url = TmdbConstants.getPopularMoviesUrl();
    final response = await httpClient.get<dynamic>(
      url,
      queryParameters: {
        ..._getBasicQueryParams(),
        'page': page,
      },
      headers: BasicHttpHeaders.getBasicWithToken(apiRequestParams.getApiKey()),
    );
    return _parseMoviesResponse(response);
  }

  @override
  Future<MoviesModel> searchMovies(String query, {int page = 1}) async {
    final response = await httpClient.get<dynamic>(
      TmdbConstants.searchMoviesUrl(),
      queryParameters: {
        ..._getBasicQueryParams(),
        'query': query,
        'page': page,
      },
      headers: BasicHttpHeaders.getBasicWithToken(apiRequestParams.getApiKey()),
    );
    return _parseMoviesResponse(response);
  }

  Map<String, String> _getBasicQueryParams() {
    return {'language': apiRequestParams.localeCode};
  }
}
