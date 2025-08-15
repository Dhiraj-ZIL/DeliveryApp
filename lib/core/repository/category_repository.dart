import 'dart:convert';

import 'package:flashquiz_app/core/base/base_repository.dart';
import 'package:flashquiz_app/core/models/order_model.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CategoryRepository extends BaseRepository {
  CategoryRepository(super.dio, super.database);

  Future<OrderModel>? getOrderData() async {
    String jsonString = await rootBundle.loadString('assets/json/order.json');

    // Convert to Map
    Map<String, dynamic> jsonMap = jsonDecode(jsonString);

    // Convert Map to OrderModel
    final order = OrderModel.fromJson(jsonMap);

    return order;
  }
}
