import 'dart:convert';

abstract class HttpClient {
  Future<HttpResponse<T>> get<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });
}

class HttpResponse<T> {
  HttpResponse({
    this.data,
    this.statusCode,
    this.statusMessage,
  }) ;

  T? data;
  int? statusCode;
  String? statusMessage;

  @override
  String toString() {
    if (data is Map) {
      return json.encode(data);
    }
    return data.toString();
  }
}
