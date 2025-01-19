import 'package:bookly/core/networking/api_constants.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$ApiConstants.apiBaseUrl$endPoint');
    return response.data;
  }
}
