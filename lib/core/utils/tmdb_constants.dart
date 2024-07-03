// TMDb: the movie database
/*
Использовать открытое API - The Movie Database (TMDb)
API https://developer.themoviedb.org/docs/getting-started
получение изображения : https://developer.themoviedb.org/docs/image-basics
получение списка популярных фильмов и т.д
https://developer.themoviedb.org/reference/movie-popular-list

curl --request GET \
     --url 'https://api.themoviedb.org/3/discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=popularity.desc' \
 */

class TmdbConstants {
  // Base params
  static const String environmentApiKeyIdentifier = 'TMDB_API_KEY';

  static String get apiKey =>
      const String.fromEnvironment(environmentApiKeyIdentifier);

  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String imageBaseUrl = 'https://image.tmdb.org/t/p';

  // API Endpoints
  static const String popularMoviesEndpoint = '/movie/popular';
  static const String searchMoviesEndpoint = '/search/movie';
  static const String movieDetailsEndpoint = '/movie';
  static const String genresEndpoint = '/genre/movie/list';
  static const String searchMovieEndpoint = '/search/movie';

  static String getGenresUrl() => '$baseUrl$genresEndpoint';

  static String getPopularMoviesUrl() => '$baseUrl$popularMoviesEndpoint';

  static String searchMoviesUrl() => '$baseUrl$searchMovieEndpoint';

  static String getPosterUrl(String posterPath,
          {TmdbPosterQuality quality = TmdbPosterQuality.original}) =>
      '$imageBaseUrl/${quality.name}$posterPath';
}

enum TmdbPosterQuality {
  w92,
  w154,
  w185,
  w342,
  w500,
  w780,
  original,
}
