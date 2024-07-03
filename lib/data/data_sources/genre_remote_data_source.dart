import 'package:movie_info/core/errors/exceptions.dart';
import 'package:movie_info/core/network/basic_headers.dart';
import 'package:movie_info/core/network/http_client.dart';
import 'package:movie_info/core/network/movies_api_request_params.dart';
import 'package:movie_info/core/utils/tmdb_constants.dart';
import 'package:movie_info/data/models/genre_model/genre_model.dart';

abstract class GenreRemoteDataSource {
  Future<List<GenreModel>> getGenres();
}

class GenreRemoteDataSourceImpl implements GenreRemoteDataSource {
  final HttpClient httpClient;
  final MoviesApiRequestParams apiRequestParams;

  GenreRemoteDataSourceImpl({
    required this.httpClient,
    required this.apiRequestParams,
  });

  @override
  Future<List<GenreModel>> getGenres() async {
    final url = TmdbConstants.getGenresUrl();
    final response = await httpClient.get<dynamic>(
      url,
      queryParameters: {
        'language': apiRequestParams.localeCode,
      },
      headers: BasicHttpHeaders.getBasicWithToken(apiRequestParams.getApiKey()),
    );
    if (response.statusCode == 200) {
      final genresModel = GenresModel.fromJson(response.data as Map<String, dynamic>);
      return genresModel.genres;
    } else {
      throw NetworkException();
    }
  }

}