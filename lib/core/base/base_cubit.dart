import 'dart:developer';

import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:flashquiz_app/core/base/base_repository.dart';
import 'package:flashquiz_app/core/base/base_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseCubit<T> extends Cubit<T> {
  final BaseRepository baseRepository;
  BaseCubit(super.initialState, this.baseRepository);
}

abstract class BaseAsyncCubit<T> extends Cubit<AsyncValue<T>> {
  final BaseRepository baseRepository;
  BaseAsyncCubit(this.baseRepository) : super(const AsyncValue.initial());

  Future<void> runguarded(
    Future<T> Function() future, {
    bool appendErrorCode = false,
    T Function(T? currentData)? onError,
  }) async {
    try {
      final T result = await future();

      if (!isClosed) {
        emit(AsyncValue.data(data: result));
      }
    } on DioException catch (err, stackTrace) {
      debugPrint(err.toString());
      debugPrintStack(stackTrace: stackTrace);
      if (!isClosed) {
        final errorData = onError?.call(state.data) ?? state.data;
        emit(AsyncValue.error(
            data: errorData,
            message: appendErrorCode == true
                ? "${err.toNetworkException.message}/${err.toNetworkException.statusCode}"
                : err.toNetworkException.message));
      }
    } on PlatformException catch (err, stackTrace) {
      debugPrintStack(stackTrace: stackTrace);
      String errorMessage = err.code == "READ_ERROR"
          ? err.toString()
          : getFriendlyErrorMessage(err);
      // Show the error message to the user
      if ((!isClosed)) {
        final errorData = onError?.call(state.data) ?? state.data;
        emit(AsyncValue.error(
          data: errorData,
          message: errorMessage,
        ));
      }
    } catch (err, stackTrace) {
      log("${T.runtimeType.toString()}: ${err.toString()}");
      debugPrintStack(
        stackTrace: stackTrace,
      );
      if (!isClosed) {
        final errorData = onError?.call(state.data) ?? state.data;
        emit(AsyncValue.error(
          data: errorData,
          message: err.toString(),
        ));
      }
    }
  }

  String getFriendlyErrorMessage(PlatformException exception) {
    // Use regex to extract the ApiException code from the exception message
    final RegExp apiExceptionCodeRegex = RegExp(r'ApiException: (\d+):');
    final match = apiExceptionCodeRegex.firstMatch(exception.message ?? '');

    String apiExceptionCode = match?.group(1) ?? '';

    switch (apiExceptionCode) {
      case '0':
        return "Operation completed successfully.";
      case '1':
        return "Google Play services are missing. Please install Google Play services and try again.";
      case '2':
        return "Google Play services need to be updated. Please update Google Play services and try again.";
      case '3':
        return "Google Play services are disabled. Please enable Google Play services and try again.";
      case '4':
        return "You need to sign in to your Google account.";
      case '5':
        return "The specified account is invalid. Please check your account details and try again.";
      case '7':
        return "A network error occurred. Please check your internet connection and try again.";
      case '8':
        return "An internal error occurred. Please try again later.";
      case '10':
        return "An error occurred due to incorrect configuration. Please check your app's configuration and try again.";
      case '15':
        return "The operation timed out. Please try again.";
      case '16':
        return "The operation was canceled. Please try again.";
      default:
        return "An unknown error occurred. Please try again.";
    }
  }
}
