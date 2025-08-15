import 'package:auto_route/auto_route.dart';
import 'package:flashquiz_app/core/models/order_model.dart';
import 'package:flashquiz_app/features/order/order_track_map/order_popup_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OrderTrackMapPage extends StatefulWidget {
  final OrderModel? orderData;

  const OrderTrackMapPage({super.key, this.orderData});

  @override
  State<OrderTrackMapPage> createState() => _OrderTrackMapPageState();
}

class _OrderTrackMapPageState extends State<OrderTrackMapPage> {
  final DraggableScrollableController _sheetController =
      DraggableScrollableController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            context.router.maybePop();
          },
        ),
        title: const Text(
          "Order Tracking",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
      body: Stack(
        children: [
          // Main content (map, details, etc.)
          InkWell(
            onTap: () {
              // Collapse bottom sheet to min height when tapping outside
              _sheetController.animateTo(
                0.15, // minChildSize
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
            child: Container(
              color: Colors.grey[200],
              alignment: Alignment.center,
              child: const Text(
                "Order Tracking Map or Details Here",
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ),
          ),

          // Persistent draggable bottom sheet
          DraggableScrollableSheet(
            controller: _sheetController,
            initialChildSize: 0.15, // visible height when "minimized"
            minChildSize: 0.15, // smallest height
            maxChildSize: 0.4, // largest height
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Grab handle

                    // Scrollable content of bottom sheet
                    Expanded(
                      child: SingleChildScrollView(
                        controller: scrollController,
                        child: InkWell(
                            onTap: () {
                              _sheetController.animateTo(
                                0.4, // minChildSize
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            },
                            child:
                                OrderBottomSheet(orderData: widget.orderData)),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
