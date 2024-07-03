import 'package:dio/dio.dart';
import 'package:movie_info/core/network/http_client.dart';

class DioHttpClient implements HttpClient {
  final dio = Dio();

  DioHttpClient();

  @override
  Future<HttpResponse<T>> get<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    final dioResponse = await dio.get<T>(
      url,
      queryParameters: queryParameters,
      options: Options(headers: headers),
    );
    return HttpResponse(
      data: dioResponse.data,
      statusCode: dioResponse.statusCode,
      statusMessage: dioResponse.statusMessage,
    );
  }
}
