class BaseApi {
  late String _baseUrl = 'https://jsonplaceholder.typicode.com';

  construction(String? baseUrl) {
    if (baseUrl != null) {
      _baseUrl = baseUrl;
    }
  }

  get baseUrl {
    return _baseUrl;
  }
}
