class MoviesApiRequestParams {
  final String Function() getApiKey;
  final String localeCode;

  MoviesApiRequestParams({required this.getApiKey, required this.localeCode});
}