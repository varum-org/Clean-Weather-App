class ApiConfig {
  const ApiConfig._();

  static const connectTimeout = 30000;
  static const receiveTimeout = 30000;
  static const sendTimeout = 30000;

  static const _baseUrl = 'https://www.metaweather.com/api/';

  static String baseUrl() {
    return _baseUrl;
  }
}
