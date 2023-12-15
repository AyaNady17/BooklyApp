import 'package:dio/dio.dart';

abstract class Failure {
  String errmsg;
  Failure(this.errmsg);
}

class ServerFailure extends Failure {
  ServerFailure(super.errmsg);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Server Connection TimeOut");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send to APIServer TimeOut");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive Timeout to APIServer");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad Certificate to APIServer");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Request cancelled to APIServer,Please try later");
      case DioExceptionType.connectionError:
        return ServerFailure("Check your internet connection and try again");
      case DioExceptionType.unknown:
        return ServerFailure("Oops unexpected error ,Please try again");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 403 || statusCode == 401) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          'The server cannot find the requested resource,Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error ,Please try later!');
    } else {
      return ServerFailure('Oops there was an error , Please try again!');
    }
  }
}
