import 'package:auto_route/auto_route.dart';
import 'package:flashquiz_app/core/models/order_model.dart';
import 'package:flashquiz_app/features/home/map_screen.dart';
import 'package:flashquiz_app/features/order/order_track_map/order_popup_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
      body: Stack(
        children: [
          // Main content (map, details, etc.)

          Container(
            color: Colors.grey[200],
            alignment: Alignment.center,
            child: HomeMapPage(
              pickupLocation: LatLng(
                widget.orderData?.pickupLocation.latitude ?? 27.7033,
                widget.orderData?.pickupLocation.longitude ?? 85.3066,
              ),
              dropLocation: LatLng(
                widget.orderData?.deliveryLocation.latitude ?? 27.7033,
                widget.orderData?.deliveryLocation.longitude ?? 85.3066,
              ),
              isPolyLineNeeded: true,
            ),
          ),
          Positioned(
              top: 70.h,
              left: 20.w,
              child: InkWell(
                onTap: () {
                  context.router.maybePop();
                },
                child: Container(
                  height: 46.h,
                  width: 46.w,
                  padding: EdgeInsets.only(
                    left: 7.w,
                    right: 10.w,
                    top: 5.h,
                    bottom: 5.h,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.black,
                      size: 24.sp,
                    ),
                  ),
                ),
              )),

          // Persistent draggable bottom sheet
          DraggableScrollableSheet(
            controller: _sheetController,
            initialChildSize: 0.39, // visible height when "minimized"
            minChildSize: 0.15, // smallest height
            maxChildSize: 0.39, // largest height
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
