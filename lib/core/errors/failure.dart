import 'package:dio/dio.dart';

class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("connectionTimeout");

      case DioExceptionType.sendTimeout:
        return ServerFailure("sendTimeout");

      case DioExceptionType.receiveTimeout:
        return ServerFailure("receiveTimeout");
      case DioExceptionType.badCertificate:
        return ServerFailure("badCertificate");

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure("cancel");

      case DioExceptionType.connectionError:
        return ServerFailure("connectionError");

      case DioExceptionType.unknown:
        if (dioException.message!.contains("SocketException")) {
          return ServerFailure("no internet connection");
        }
        return ServerFailure("opps, there is an error, please try again later");
    }
  }
  factory ServerFailure.fromResponse(int statusCode, DioException) {
    return ServerFailure("opps, try again");
  }
}
