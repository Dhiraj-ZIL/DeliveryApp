// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  @JsonKey(name: 'orderId')
  String get orderId => throw _privateConstructorUsedError;
  String get customerName => throw _privateConstructorUsedError;
  String get customerContact => throw _privateConstructorUsedError;
  String get orderDate => throw _privateConstructorUsedError;
  String get orderStatus => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  String get paymentStatus => throw _privateConstructorUsedError;
  List<OrderItem> get items => throw _privateConstructorUsedError;
  Location get pickupLocation => throw _privateConstructorUsedError;
  Location get deliveryLocation => throw _privateConstructorUsedError;
  DeliveryPerson get deliveryPerson => throw _privateConstructorUsedError;
  String get distanceOfPickup => throw _privateConstructorUsedError;
  String get distanceOfDelivery => throw _privateConstructorUsedError;
  String get estimatedDeliveryTime => throw _privateConstructorUsedError;

  /// Serializes this OrderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'orderId') String orderId,
      String customerName,
      String customerContact,
      String orderDate,
      String orderStatus,
      double totalAmount,
      String paymentStatus,
      List<OrderItem> items,
      Location pickupLocation,
      Location deliveryLocation,
      DeliveryPerson deliveryPerson,
      String distanceOfPickup,
      String distanceOfDelivery,
      String estimatedDeliveryTime});

  $LocationCopyWith<$Res> get pickupLocation;
  $LocationCopyWith<$Res> get deliveryLocation;
  $DeliveryPersonCopyWith<$Res> get deliveryPerson;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? customerName = null,
    Object? customerContact = null,
    Object? orderDate = null,
    Object? orderStatus = null,
    Object? totalAmount = null,
    Object? paymentStatus = null,
    Object? items = null,
    Object? pickupLocation = null,
    Object? deliveryLocation = null,
    Object? deliveryPerson = null,
    Object? distanceOfPickup = null,
    Object? distanceOfDelivery = null,
    Object? estimatedDeliveryTime = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerContact: null == customerContact
          ? _value.customerContact
          : customerContact // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      pickupLocation: null == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as Location,
      deliveryLocation: null == deliveryLocation
          ? _value.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as Location,
      deliveryPerson: null == deliveryPerson
          ? _value.deliveryPerson
          : deliveryPerson // ignore: cast_nullable_to_non_nullable
              as DeliveryPerson,
      distanceOfPickup: null == distanceOfPickup
          ? _value.distanceOfPickup
          : distanceOfPickup // ignore: cast_nullable_to_non_nullable
              as String,
      distanceOfDelivery: null == distanceOfDelivery
          ? _value.distanceOfDelivery
          : distanceOfDelivery // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedDeliveryTime: null == estimatedDeliveryTime
          ? _value.estimatedDeliveryTime
          : estimatedDeliveryTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get pickupLocation {
    return $LocationCopyWith<$Res>(_value.pickupLocation, (value) {
      return _then(_value.copyWith(pickupLocation: value) as $Val);
    });
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get deliveryLocation {
    return $LocationCopyWith<$Res>(_value.deliveryLocation, (value) {
      return _then(_value.copyWith(deliveryLocation: value) as $Val);
    });
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryPersonCopyWith<$Res> get deliveryPerson {
    return $DeliveryPersonCopyWith<$Res>(_value.deliveryPerson, (value) {
      return _then(_value.copyWith(deliveryPerson: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
          _$OrderModelImpl value, $Res Function(_$OrderModelImpl) then) =
      __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'orderId') String orderId,
      String customerName,
      String customerContact,
      String orderDate,
      String orderStatus,
      double totalAmount,
      String paymentStatus,
      List<OrderItem> items,
      Location pickupLocation,
      Location deliveryLocation,
      DeliveryPerson deliveryPerson,
      String distanceOfPickup,
      String distanceOfDelivery,
      String estimatedDeliveryTime});

  @override
  $LocationCopyWith<$Res> get pickupLocation;
  @override
  $LocationCopyWith<$Res> get deliveryLocation;
  @override
  $DeliveryPersonCopyWith<$Res> get deliveryPerson;
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
      _$OrderModelImpl _value, $Res Function(_$OrderModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? customerName = null,
    Object? customerContact = null,
    Object? orderDate = null,
    Object? orderStatus = null,
    Object? totalAmount = null,
    Object? paymentStatus = null,
    Object? items = null,
    Object? pickupLocation = null,
    Object? deliveryLocation = null,
    Object? deliveryPerson = null,
    Object? distanceOfPickup = null,
    Object? distanceOfDelivery = null,
    Object? estimatedDeliveryTime = null,
  }) {
    return _then(_$OrderModelImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerContact: null == customerContact
          ? _value.customerContact
          : customerContact // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      pickupLocation: null == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as Location,
      deliveryLocation: null == deliveryLocation
          ? _value.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as Location,
      deliveryPerson: null == deliveryPerson
          ? _value.deliveryPerson
          : deliveryPerson // ignore: cast_nullable_to_non_nullable
              as DeliveryPerson,
      distanceOfPickup: null == distanceOfPickup
          ? _value.distanceOfPickup
          : distanceOfPickup // ignore: cast_nullable_to_non_nullable
              as String,
      distanceOfDelivery: null == distanceOfDelivery
          ? _value.distanceOfDelivery
          : distanceOfDelivery // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedDeliveryTime: null == estimatedDeliveryTime
          ? _value.estimatedDeliveryTime
          : estimatedDeliveryTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderModelImpl extends _OrderModel {
  const _$OrderModelImpl(
      {@JsonKey(name: 'orderId') required this.orderId,
      required this.customerName,
      required this.customerContact,
      required this.orderDate,
      required this.orderStatus,
      required this.totalAmount,
      required this.paymentStatus,
      required final List<OrderItem> items,
      required this.pickupLocation,
      required this.deliveryLocation,
      required this.deliveryPerson,
      required this.distanceOfPickup,
      required this.distanceOfDelivery,
      required this.estimatedDeliveryTime})
      : _items = items,
        super._();

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  @JsonKey(name: 'orderId')
  final String orderId;
  @override
  final String customerName;
  @override
  final String customerContact;
  @override
  final String orderDate;
  @override
  final String orderStatus;
  @override
  final double totalAmount;
  @override
  final String paymentStatus;
  final List<OrderItem> _items;
  @override
  List<OrderItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final Location pickupLocation;
  @override
  final Location deliveryLocation;
  @override
  final DeliveryPerson deliveryPerson;
  @override
  final String distanceOfPickup;
  @override
  final String distanceOfDelivery;
  @override
  final String estimatedDeliveryTime;

  @override
  String toString() {
    return 'OrderModel(orderId: $orderId, customerName: $customerName, customerContact: $customerContact, orderDate: $orderDate, orderStatus: $orderStatus, totalAmount: $totalAmount, paymentStatus: $paymentStatus, items: $items, pickupLocation: $pickupLocation, deliveryLocation: $deliveryLocation, deliveryPerson: $deliveryPerson, distanceOfPickup: $distanceOfPickup, distanceOfDelivery: $distanceOfDelivery, estimatedDeliveryTime: $estimatedDeliveryTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerContact, customerContact) ||
                other.customerContact == customerContact) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.deliveryLocation, deliveryLocation) ||
                other.deliveryLocation == deliveryLocation) &&
            (identical(other.deliveryPerson, deliveryPerson) ||
                other.deliveryPerson == deliveryPerson) &&
            (identical(other.distanceOfPickup, distanceOfPickup) ||
                other.distanceOfPickup == distanceOfPickup) &&
            (identical(other.distanceOfDelivery, distanceOfDelivery) ||
                other.distanceOfDelivery == distanceOfDelivery) &&
            (identical(other.estimatedDeliveryTime, estimatedDeliveryTime) ||
                other.estimatedDeliveryTime == estimatedDeliveryTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      customerName,
      customerContact,
      orderDate,
      orderStatus,
      totalAmount,
      paymentStatus,
      const DeepCollectionEquality().hash(_items),
      pickupLocation,
      deliveryLocation,
      deliveryPerson,
      distanceOfPickup,
      distanceOfDelivery,
      estimatedDeliveryTime);

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(
      this,
    );
  }
}

abstract class _OrderModel extends OrderModel {
  const factory _OrderModel(
      {@JsonKey(name: 'orderId') required final String orderId,
      required final String customerName,
      required final String customerContact,
      required final String orderDate,
      required final String orderStatus,
      required final double totalAmount,
      required final String paymentStatus,
      required final List<OrderItem> items,
      required final Location pickupLocation,
      required final Location deliveryLocation,
      required final DeliveryPerson deliveryPerson,
      required final String distanceOfPickup,
      required final String distanceOfDelivery,
      required final String estimatedDeliveryTime}) = _$OrderModelImpl;
  const _OrderModel._() : super._();

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  @JsonKey(name: 'orderId')
  String get orderId;
  @override
  String get customerName;
  @override
  String get customerContact;
  @override
  String get orderDate;
  @override
  String get orderStatus;
  @override
  double get totalAmount;
  @override
  String get paymentStatus;
  @override
  List<OrderItem> get items;
  @override
  Location get pickupLocation;
  @override
  Location get deliveryLocation;
  @override
  DeliveryPerson get deliveryPerson;
  @override
  String get distanceOfPickup;
  @override
  String get distanceOfDelivery;
  @override
  String get estimatedDeliveryTime;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) {
  return _OrderItem.fromJson(json);
}

/// @nodoc
mixin _$OrderItem {
  String get itemName => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  /// Serializes this OrderItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemCopyWith<OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) then) =
      _$OrderItemCopyWithImpl<$Res, OrderItem>;
  @useResult
  $Res call({String itemName, int quantity, double price});
}

/// @nodoc
class _$OrderItemCopyWithImpl<$Res, $Val extends OrderItem>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemName = null,
    Object? quantity = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderItemImplCopyWith<$Res>
    implements $OrderItemCopyWith<$Res> {
  factory _$$OrderItemImplCopyWith(
          _$OrderItemImpl value, $Res Function(_$OrderItemImpl) then) =
      __$$OrderItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String itemName, int quantity, double price});
}

/// @nodoc
class __$$OrderItemImplCopyWithImpl<$Res>
    extends _$OrderItemCopyWithImpl<$Res, _$OrderItemImpl>
    implements _$$OrderItemImplCopyWith<$Res> {
  __$$OrderItemImplCopyWithImpl(
      _$OrderItemImpl _value, $Res Function(_$OrderItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemName = null,
    Object? quantity = null,
    Object? price = null,
  }) {
    return _then(_$OrderItemImpl(
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemImpl implements _OrderItem {
  const _$OrderItemImpl(
      {required this.itemName, required this.quantity, required this.price});

  factory _$OrderItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemImplFromJson(json);

  @override
  final String itemName;
  @override
  final int quantity;
  @override
  final double price;

  @override
  String toString() {
    return 'OrderItem(itemName: $itemName, quantity: $quantity, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemImpl &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, itemName, quantity, price);

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      __$$OrderItemImplCopyWithImpl<_$OrderItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemImplToJson(
      this,
    );
  }
}

abstract class _OrderItem implements OrderItem {
  const factory _OrderItem(
      {required final String itemName,
      required final int quantity,
      required final double price}) = _$OrderItemImpl;

  factory _OrderItem.fromJson(Map<String, dynamic> json) =
      _$OrderItemImpl.fromJson;

  @override
  String get itemName;
  @override
  int get quantity;
  @override
  double get price;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String get address => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get contact => throw _privateConstructorUsedError;
  String get shortLocation => throw _privateConstructorUsedError;
  String? get storeName => throw _privateConstructorUsedError;

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {String address,
      double latitude,
      double longitude,
      String contact,
      String shortLocation,
      String? storeName});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? contact = null,
    Object? shortLocation = null,
    Object? storeName = freezed,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      shortLocation: null == shortLocation
          ? _value.shortLocation
          : shortLocation // ignore: cast_nullable_to_non_nullable
              as String,
      storeName: freezed == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address,
      double latitude,
      double longitude,
      String contact,
      String shortLocation,
      String? storeName});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? contact = null,
    Object? shortLocation = null,
    Object? storeName = freezed,
  }) {
    return _then(_$LocationImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      shortLocation: null == shortLocation
          ? _value.shortLocation
          : shortLocation // ignore: cast_nullable_to_non_nullable
              as String,
      storeName: freezed == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl(
      {required this.address,
      required this.latitude,
      required this.longitude,
      required this.contact,
      required this.shortLocation,
      required this.storeName});

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final String address;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String contact;
  @override
  final String shortLocation;
  @override
  final String? storeName;

  @override
  String toString() {
    return 'Location(address: $address, latitude: $latitude, longitude: $longitude, contact: $contact, shortLocation: $shortLocation, storeName: $storeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.shortLocation, shortLocation) ||
                other.shortLocation == shortLocation) &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, address, latitude, longitude,
      contact, shortLocation, storeName);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {required final String address,
      required final double latitude,
      required final double longitude,
      required final String contact,
      required final String shortLocation,
      required final String? storeName}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  String get address;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get contact;
  @override
  String get shortLocation;
  @override
  String? get storeName;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryPerson _$DeliveryPersonFromJson(Map<String, dynamic> json) {
  return _DeliveryPerson.fromJson(json);
}

/// @nodoc
mixin _$DeliveryPerson {
  String get name => throw _privateConstructorUsedError;
  String get contact => throw _privateConstructorUsedError;
  String get vehicle => throw _privateConstructorUsedError;

  /// Serializes this DeliveryPerson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryPerson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryPersonCopyWith<DeliveryPerson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryPersonCopyWith<$Res> {
  factory $DeliveryPersonCopyWith(
          DeliveryPerson value, $Res Function(DeliveryPerson) then) =
      _$DeliveryPersonCopyWithImpl<$Res, DeliveryPerson>;
  @useResult
  $Res call({String name, String contact, String vehicle});
}

/// @nodoc
class _$DeliveryPersonCopyWithImpl<$Res, $Val extends DeliveryPerson>
    implements $DeliveryPersonCopyWith<$Res> {
  _$DeliveryPersonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryPerson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? contact = null,
    Object? vehicle = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      vehicle: null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryPersonImplCopyWith<$Res>
    implements $DeliveryPersonCopyWith<$Res> {
  factory _$$DeliveryPersonImplCopyWith(_$DeliveryPersonImpl value,
          $Res Function(_$DeliveryPersonImpl) then) =
      __$$DeliveryPersonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String contact, String vehicle});
}

/// @nodoc
class __$$DeliveryPersonImplCopyWithImpl<$Res>
    extends _$DeliveryPersonCopyWithImpl<$Res, _$DeliveryPersonImpl>
    implements _$$DeliveryPersonImplCopyWith<$Res> {
  __$$DeliveryPersonImplCopyWithImpl(
      _$DeliveryPersonImpl _value, $Res Function(_$DeliveryPersonImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryPerson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? contact = null,
    Object? vehicle = null,
  }) {
    return _then(_$DeliveryPersonImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      vehicle: null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryPersonImpl implements _DeliveryPerson {
  const _$DeliveryPersonImpl(
      {required this.name, required this.contact, required this.vehicle});

  factory _$DeliveryPersonImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryPersonImplFromJson(json);

  @override
  final String name;
  @override
  final String contact;
  @override
  final String vehicle;

  @override
  String toString() {
    return 'DeliveryPerson(name: $name, contact: $contact, vehicle: $vehicle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryPersonImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, contact, vehicle);

  /// Create a copy of DeliveryPerson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryPersonImplCopyWith<_$DeliveryPersonImpl> get copyWith =>
      __$$DeliveryPersonImplCopyWithImpl<_$DeliveryPersonImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryPersonImplToJson(
      this,
    );
  }
}

abstract class _DeliveryPerson implements DeliveryPerson {
  const factory _DeliveryPerson(
      {required final String name,
      required final String contact,
      required final String vehicle}) = _$DeliveryPersonImpl;

  factory _DeliveryPerson.fromJson(Map<String, dynamic> json) =
      _$DeliveryPersonImpl.fromJson;

  @override
  String get name;
  @override
  String get contact;
  @override
  String get vehicle;

  /// Create a copy of DeliveryPerson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryPersonImplCopyWith<_$DeliveryPersonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
