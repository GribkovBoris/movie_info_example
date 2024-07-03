class BasicHttpHeaders{
  static Map<String, String> getBasicWithToken(String apiToken) {
    return {
      "Content-Type": "application/json",
      'Authorization': 'Bearer $apiToken',
    };
  }
}