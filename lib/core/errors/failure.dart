import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure({required this.message});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});
  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(message: "Connection Timeout");
      case DioExceptionType.sendTimeout:
        return ServerFailure(message: "Send Timeout");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(message: "Receive Timeout");
      case DioExceptionType.badCertificate:
        return ServerFailure(message: "Bad Certificate");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(message: "Cancel");
      case DioExceptionType.connectionError:
        return ServerFailure(message: "Connection Error");
      case DioExceptionType.unknown:
        return ServerFailure(message: " Oops, Unknown Error");
    }
  }
  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(message: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(message: "Not Found , please try later");
    } else if (statusCode == 500) {
      return ServerFailure(message: "Internal Server Error");
    } else {
      return ServerFailure(message: "Oops, something went wrong");
    }
  }
}
