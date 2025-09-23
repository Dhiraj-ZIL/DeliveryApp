import 'package:auto_route/auto_route.dart';
import 'package:flashquiz_app/features/order/order_detail/empty_order_page.dart';
import 'package:flashquiz_app/features/order/order_detail/order_detail_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key, this.isOrderEmpty = false});
  final bool isOrderEmpty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isOrderEmpty
          ? const Center(
              child: EmptyOrderPage(),
            )
          : const Center(
              child: OrderDetailsPage(),
            ),
    );
  }
}
