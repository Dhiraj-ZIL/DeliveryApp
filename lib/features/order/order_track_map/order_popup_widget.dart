import 'package:auto_route/auto_route.dart';
import 'package:flashquiz_app/core/models/order_model.dart';
import 'package:flashquiz_app/core/router/app_router.dart';
import 'package:flashquiz_app/core/ui/colors/app_colors.dart';
import 'package:flashquiz_app/core/widgets/dot_center_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderBottomSheet extends StatefulWidget {
  final OrderModel? orderData;

  const OrderBottomSheet({super.key, this.orderData});

  @override
  State<OrderBottomSheet> createState() => _OrderBottomSheetState();
}

class _OrderBottomSheetState extends State<OrderBottomSheet> {
  bool? _isMarkedAsPickup;
  bool? _isMarkedAsDestinationReached;
  bool? _markingAsDelivered;

  @override
  Widget build(BuildContext context) {
    final orderData = widget.orderData;

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      child: Column(
        children: [
          Container(
            height: 4,
            width: 40,
            margin: const EdgeInsets.only(top: 8, bottom: 16),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Pickup Location
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _isMarkedAsPickup == true
                          ? Icon(Icons.check_circle,
                              color: AppColors.primary, size: 18)
                          : Icon(Icons.radio_button_checked,
                              color: AppColors.primary, size: 20),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Pickup Location",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            const SizedBox(height: 4),
                            Text(orderData?.pickupLocation.address ?? "",
                                style: const TextStyle(fontSize: 14)),
                          ],
                        ),
                      ),
                      circleIconButton(
                        icon: Icons.phone,
                        color: AppColors.brandGreen,
                        onPressed: () {},
                        size: 36.sp,
                      ),
                    ],
                  ),
                  SizedBox(height: 24.sp),

                  // Delivery Location
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _isMarkedAsDestinationReached == true
                          ? Icon(Icons.check_circle,
                              color: AppColors.primary, size: 18)
                          : Icon(Icons.location_on,
                              color: AppColors.primary, size: 20),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Delivery - ${orderData?.customerName ?? ""}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                            const SizedBox(height: 4),
                            Text(orderData?.deliveryLocation.address ?? "",
                                style: const TextStyle(fontSize: 14)),
                          ],
                        ),
                      ),
                      circleIconButton(
                        icon: Icons.phone,
                        color: AppColors.brandGreen,
                        onPressed: () {},
                        size: 36.sp,
                      ),
                    ],
                  ),
                  SizedBox(height: 20.sp),

                  // Action Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _isMarkedAsDestinationReached == true
                            ? _markingAsDelivered == true
                                ? AppColors.primary.withValues(alpha: 0.6)
                                : AppColors.primary
                            : AppColors.brandSecondary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                      onPressed: () {
                        if (_markingAsDelivered == true) return;
                        if (_isMarkedAsPickup != true) {
                          setState(() => _isMarkedAsPickup = true);
                        } else if (_isMarkedAsDestinationReached != true) {
                          setState(() => _isMarkedAsDestinationReached = true);
                        } else {
                          setState(() => _markingAsDelivered = true);
                          Future.delayed(const Duration(seconds: 1), () {
                            context.pushRoute(DeliveryCompleteRoute());
                          });
                        }
                      },
                      child: Text(
                        _markingAsDelivered == true
                            ? "Marking as Delivered..."
                            : _isMarkedAsPickup != true
                                ? "Mark as Picked Up"
                                : _isMarkedAsDestinationReached != true
                                    ? "Mark as Destination Reached"
                                    : "Mark as Delivered",
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
