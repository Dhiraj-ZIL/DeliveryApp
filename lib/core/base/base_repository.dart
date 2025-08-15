import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flashquiz_app/core/storage/data_sources/local_db_service.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:core/core.dart';

@singleton
class BaseRepository {
  final Dio dio;
  final LocalDatabaseService database;

  // User? get currentUser => database.currentUser;

  BaseRepository(
    this.dio,
    this.database,
  ) {
    _configDio(dio);
  }

  // **************************************************************************
  // BaseRepository Config
  // **************************************************************************

  final _limit = 10;
  int get limit => _limit;

  // **************************************************************************
  // Dio Config
  // **************************************************************************

  void _configDio(Dio dio) {
    dio.interceptors.clear();

    dio.options = BaseOptions(
      baseUrl: ApiPaths.baseApiUrl,
    );
    // dio.options.connectTimeout = const Duration(seconds: 30);

    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
      HttpClient client = HttpClient();
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };

    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90,
          enabled: kDebugMode,
          filter: (options, args) {
            //TODO: can be not print specifice url'
            // if(options.path.contains('/posts')){
            //   return false;
            // }

            // don't print responses with unit8 list data
            return !args.isResponse || !args.hasUint8ListData;
          }));
    }
  }

  // **************************************************************************
  // Base Function to make Dio Request
  // **************************************************************************

  Future<T> makeDioRequest<T>(Future<T> Function() dioRequest) async {
    try {
      return await dioRequest();
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      rethrow;
    }
  }

  _handleDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return NetworkException.connectionTimeout;
      case DioExceptionType.sendTimeout:
        return NetworkException.sendTimeout;
      case DioExceptionType.receiveTimeout:
        return NetworkException.receiveTimeout;
      case DioExceptionType.badCertificate:
        return NetworkException.badCertificate;
      case DioExceptionType.badResponse:
        return NetworkException.badResponse(
          e.response!.statusCode!,
          e.response!.data['message'],
        );
      case DioExceptionType.cancel:
        return NetworkException.cancel;
      case DioExceptionType.connectionError:
        return NetworkException.connectionError;
      case DioExceptionType.unknown:
        if (e.error is SocketException) {
          return NetworkException.noInternet;
        }
        return NetworkException.unknown;
    }
  }
}
