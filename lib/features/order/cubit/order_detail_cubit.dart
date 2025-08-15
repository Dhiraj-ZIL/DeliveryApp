import 'package:flashquiz_app/core/base/base_cubit.dart';
import 'package:flashquiz_app/core/base/base_state.dart';
import 'package:flashquiz_app/core/models/order_model.dart';
import 'package:flashquiz_app/core/repository/category_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class OrderDetailCubit extends BaseAsyncCubit<OrderModel> {
  final OrderRepository _OrderRepository;

  OrderDetailCubit(this._OrderRepository, super.baseRepository) {
    fetchOrderData();
  }
  Future<void> fetchOrderData() async {
    emitLoading();
    try {
      final orderData = await _OrderRepository.getOrderData();
      if (orderData != null) {
        emitSuccess(orderData);
      } else {
        emitError("No order data found");
      }
    } catch (e) {
      emitError("Failed to fetch order data: $e");
    }
  }

  void emitSuccess(OrderModel order) {
    emit(AsyncValue.data(data: order));
  }

  void emitError(String message) {
    emit(AsyncValue.error(message: message));
  }

  void emitLoading() {
    emit(AsyncValue.loading());
  }
}
