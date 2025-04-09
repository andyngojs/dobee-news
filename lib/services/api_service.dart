import 'dart:convert';
import 'package:dobee_news/services/base_api.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String _baseUrl = BaseApi().baseUrl;

  Future<dynamic> get(
      String endpoint, Map<String, String>? configHeader) async {
    try {
      Map<String, String> headers = {};
      if (configHeader != null) {
        headers = {
          ...headers,
          ...configHeader,
        };
      }
      final response =
          await http.get(Uri.parse("$_baseUrl/$endpoint"), headers: headers);

      if (response.statusCode != 200 && response.statusCode != 201) {
        throw Exception('Failed to load data');
      }

      return response.body;
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }

  Future<http.Response> post(String endpoint, Map<String, dynamic>? data,
      Map<String, String>? configHeader) async {
    try {
      Map<String, String> headers = {
        'Content-Type': 'application/json',
      };
      if (configHeader != null) {
        headers = {
          ...headers,
          ...configHeader,
        };
      }
      final response = await http.post(Uri.parse("$_baseUrl/$endpoint"),
          headers: headers, body: data);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to post data: $e');
    }
  }
}
