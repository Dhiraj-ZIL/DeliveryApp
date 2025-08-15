import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:flashquiz_app/core/base/base_repository.dart';
import 'package:flashquiz_app/core/base/base_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBloc<E, S> extends Bloc<E, S> {
  final BaseRepository baseRepository;
  BaseBloc(super.initialState, {required this.baseRepository});
}

abstract class BaseAsyncBloc<E, S> extends Bloc<E, AsyncValue<S>> {
  final BaseRepository baseRepository;
  BaseAsyncBloc(this.baseRepository) : super(const AsyncValue.initial());

  Future<void> runguarded({
    required Emitter<AsyncValue<S>> emit,
    required Future<S> Function() future,
  }) async {
    try {
      emit(AsyncValue.data(data: await future()));
    } on DioException catch (err) {
      emit(AsyncValue.error(
          data: state.data, message: err.toNetworkException.message));
    }
  }
}
