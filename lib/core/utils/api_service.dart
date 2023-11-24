import 'package:dio/dio.dart';

class ApiService {
  final baseURl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required endpoint}) async {
    var response = await dio.get('$baseURl$endpoint');
    return response.data;
  }
}
