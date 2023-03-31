import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:tree/app/app.dart';
import 'api_const.dart';
import '../extension/nullableCheck.dart';

class DioClient {
  Future getData(String path, int rows, int start) async {
    var queryParameters = {
      'rows': rows,
      'start': start,
    };
    try {
      final response = await Dio(BaseOptions(baseUrl: ApiConst.baseUrl))
          .get(path, queryParameters: queryParameters);
      return response.data;
    } on SocketException catch (e) {
      throw Exception(e.message);
    } on FormatException catch (_) {
      throw const FormatException("Invalid response format");
    } on DioError catch (e) {
      e.response?.statusCode?.let((statusCode) {
        if (statusCode >= 400 && statusCode < 500) {
          throw Exception("HTTP client error");
          // ignore: dead_code
          networkController.setIsHttpClientErrorTrue();
        } else if (statusCode >= 500) {
          throw Exception("HTTP server error");
          // ignore: dead_code
          networkController.setIsHttpServerErrorTrue();
        } else {
          networkController.setIsHttpClientErrorFalse();
          networkController.setIsHttpServerErrorFalse();
        }
      });
      throw Exception(e.message);
    }
  }
}
