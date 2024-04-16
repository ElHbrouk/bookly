import 'package:dio/dio.dart';

class ApiService {
  final _dio = Dio();
  final baseUrl = 'https://www.googleapis.com/books/v1/';
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Response response = await _dio.get('$baseUrl$endPoint');
    Map<String, dynamic> json = response.data;
    return json;
  }
}
