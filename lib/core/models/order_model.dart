import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const OrderModel._();

  const factory OrderModel({
    @JsonKey(name: 'orderId') required String orderId,
    required String customerName,
    required String customerContact,
    required String orderDate,
    required String orderStatus,
    required double totalAmount,
    required String paymentStatus,
    required List<OrderItem> items,
    required Location pickupLocation,
    required Location deliveryLocation,
    required DeliveryPerson deliveryPerson,
    required String distanceOfPickup,
    required String distanceOfDelivery,
    required String estimatedDeliveryTime,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}

@freezed
class OrderItem with _$OrderItem {
  const factory OrderItem({
    required String itemName,
    required int quantity,
    required double price,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    required String address,
    required double latitude,
    required double longitude,
    required String contact,
    required String shortLocation,
    required String? storeName,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class DeliveryPerson with _$DeliveryPerson {
  const factory DeliveryPerson({
    required String name,
    required String contact,
    required String vehicle,
  }) = _DeliveryPerson;

  factory DeliveryPerson.fromJson(Map<String, dynamic> json) =>
      _$DeliveryPersonFromJson(json);
}
