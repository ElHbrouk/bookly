import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  ApiService(this._dio);
  final baseUrl = 'https://www.googleapis.com/books/v1/';
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Response response = await _dio.get('$baseUrl$endPoint');
    Map<String, dynamic> json = response.data;
    return json;
  }
}
