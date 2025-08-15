// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      orderId: json['orderId'] as String,
      customerName: json['customerName'] as String,
      customerContact: json['customerContact'] as String,
      orderDate: json['orderDate'] as String,
      orderStatus: json['orderStatus'] as String,
      totalAmount: (json['totalAmount'] as num).toDouble(),
      paymentStatus: json['paymentStatus'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      pickupLocation:
          Location.fromJson(json['pickupLocation'] as Map<String, dynamic>),
      deliveryLocation:
          Location.fromJson(json['deliveryLocation'] as Map<String, dynamic>),
      deliveryPerson: DeliveryPerson.fromJson(
          json['deliveryPerson'] as Map<String, dynamic>),
      distanceOfPickup: json['distanceOfPickup'] as String,
      distanceOfDelivery: json['distanceOfDelivery'] as String,
      estimatedDeliveryTime: json['estimatedDeliveryTime'] as String,
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'customerName': instance.customerName,
      'customerContact': instance.customerContact,
      'orderDate': instance.orderDate,
      'orderStatus': instance.orderStatus,
      'totalAmount': instance.totalAmount,
      'paymentStatus': instance.paymentStatus,
      'items': instance.items,
      'pickupLocation': instance.pickupLocation,
      'deliveryLocation': instance.deliveryLocation,
      'deliveryPerson': instance.deliveryPerson,
      'distanceOfPickup': instance.distanceOfPickup,
      'distanceOfDelivery': instance.distanceOfDelivery,
      'estimatedDeliveryTime': instance.estimatedDeliveryTime,
    };

_$OrderItemImpl _$$OrderItemImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemImpl(
      itemName: json['itemName'] as String,
      quantity: (json['quantity'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$OrderItemImplToJson(_$OrderItemImpl instance) =>
    <String, dynamic>{
      'itemName': instance.itemName,
      'quantity': instance.quantity,
      'price': instance.price,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      address: json['address'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      contact: json['contact'] as String,
      shortLocation: json['shortLocation'] as String,
      storeName: json['storeName'] as String?,
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'contact': instance.contact,
      'shortLocation': instance.shortLocation,
      'storeName': instance.storeName,
    };

_$DeliveryPersonImpl _$$DeliveryPersonImplFromJson(Map<String, dynamic> json) =>
    _$DeliveryPersonImpl(
      name: json['name'] as String,
      contact: json['contact'] as String,
      vehicle: json['vehicle'] as String,
    );

Map<String, dynamic> _$$DeliveryPersonImplToJson(
        _$DeliveryPersonImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'contact': instance.contact,
      'vehicle': instance.vehicle,
    };
