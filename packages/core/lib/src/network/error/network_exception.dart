// 🎯 Dart imports:
import 'dart:io';

// 📦 Package imports:
import 'package:dio/dio.dart';
import 'package:html/parser.dart' as html_parser;

enum NetworkExceptionTypes {
  badResponse,

  noInternet,

  connectionTimeout,

  sendTimeout,

  receiveTimeout,

  badCertificate,

  cancel,

  connectionError,

  htmlResponse, // New enum value for HTML response

  unknown,
}

class NetworkException implements Exception {
  final int? statusCode;
  final String message;
  final NetworkExceptionTypes reason;

  NetworkException({
    this.statusCode,
    required this.message,
    required this.reason,
  });

  static badResponse(int statusCode, String message) => NetworkException(
        statusCode: statusCode,
        message: message,
        reason: NetworkExceptionTypes.badResponse,
      );

  static get connectionTimeout => NetworkException(
        message:
            "A network error occurred. Please check your internet connection and try again.",
        reason: NetworkExceptionTypes.connectionTimeout,
      );

  static get sendTimeout => NetworkException(
        message: "Request timed out while sending data. Please try again.",
        reason: NetworkExceptionTypes.sendTimeout,
      );

  static get receiveTimeout => NetworkException(
        message: "Request timed out while receiving data. Please try again.",
        reason: NetworkExceptionTypes.receiveTimeout,
      );

  static get badCertificate => NetworkException(
        message:
            "The server certificate is invalid. Please check your connection and try again.",
        reason: NetworkExceptionTypes.badCertificate,
      );

  static get cancel => NetworkException(
        message: "The request was cancelled. Please try again.",
        reason: NetworkExceptionTypes.cancel,
      );

  static get connectionError => NetworkException(
        message:
            "A network error occurred. Please check your internet connection and try again.",
        reason: NetworkExceptionTypes.connectionError,
      );

  static get unknown => NetworkException(
        message: "An unknown network error occurred. Please try again.",
        reason: NetworkExceptionTypes.unknown,
      );

  static get noInternet => NetworkException(
        message:
            "No Internet Connection. Please check your network settings and try again.",
        reason: NetworkExceptionTypes.noInternet,
      );

  static htmlResponse(int statusCode, String message) => NetworkException(
        statusCode: statusCode,
        message:
            "Received an HTML response from the server. Status code: $statusCode",
        reason: NetworkExceptionTypes.htmlResponse,
      );
}

extension DioExceptionX on DioException {
  NetworkException get toNetworkException {
    switch (type) {
      case DioExceptionType.connectionTimeout:
        return NetworkException.connectionTimeout;
      case DioExceptionType.sendTimeout:
        return NetworkException.sendTimeout;
      case DioExceptionType.receiveTimeout:
        return NetworkException.receiveTimeout;
      case DioExceptionType.badCertificate:
        return NetworkException.badCertificate;
      case DioExceptionType.badResponse:
        if (response != null &&
            response!.headers.value('Content-Type') == 'text/html') {
          String errorMessage = _parseHtmlErrorMessage(response!.data);
          return NetworkException.htmlResponse(
              response!.statusCode!, errorMessage);
        }
        return NetworkException.badResponse(
          response!.statusCode!,
          response!.data['message'],
        );
      case DioExceptionType.cancel:
        return NetworkException.cancel;
      case DioExceptionType.connectionError:
        return NetworkException.connectionError;
      case DioExceptionType.unknown:
        if (error is SocketException) {
          return NetworkException.noInternet;
        }
        return NetworkException.unknown;
    }
  }

  String _parseHtmlErrorMessage(String htmlResponse) {
    try {
      var document = html_parser.parse(htmlResponse);
      var errorElement = document.querySelector('h1');
      return errorElement?.text ?? 'Failed to parse HTML error response';
    } catch (e) {
      return 'Failed to parse HTML error response';
    }
  }
}
