import 'package:dio/dio.dart';

class AppServices {
  final Dio _dio;
  static final String _baseUrl = "https://basmaapi.pythonanywhere.com";
  AppServices(this._dio);
  static Future<Map<String, dynamic>> get({required String endPoint}) async {
    var res = await Dio().get(_baseUrl + endPoint);
    return res.data;
  }
}
