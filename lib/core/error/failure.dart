import 'package:dio/dio.dart';

abstract class Failure {
  final String erroMessage;

  Failure(this.erroMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.erroMessage);
  factory ServerFailure.fromDioExpcption(DioException ex) {
    switch (ex.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection Timeout With ApiServer');
      case DioExceptionType.cancel:
        return ServerFailure('request to ApiServer was cancel');
      case DioExceptionType.sendTimeout:
        return ServerFailure('send Timeout With ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive Timeout With ApiServer');
      case DioExceptionType.connectionError:
        return ServerFailure('connection Error With ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            response: ex.response, statusCode: ex.response!.statusCode!);
      case DioExceptionType.unknown:
        return ServerFailure('SomeThing Wrong');
      case DioExceptionType.badCertificate:
        return ServerFailure('badCertificate With ApiServer');
    }
  }
  factory ServerFailure.fromResponse(
      {required int statusCode, required dynamic response}) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('your request not found ,try again');
    } else if (statusCode == 500) {
      return ServerFailure('Interal Server error,try again later');
    }
    return ServerFailure('Opps there was an error , try again later');
  }
}
