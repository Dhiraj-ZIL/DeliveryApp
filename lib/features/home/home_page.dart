import 'package:auto_route/auto_route.dart';
import 'package:flashquiz_app/core/base/base_state.dart';
import 'package:flashquiz_app/core/di/dependency_injection.dart';
import 'package:flashquiz_app/core/models/order_model.dart';
import 'package:flashquiz_app/core/router/app_router.dart';
import 'package:flashquiz_app/core/ui/colors/app_colors.dart';
import 'package:flashquiz_app/features/order/cubit/order_detail_cubit.dart';
import 'package:flashquiz_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isOnline = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => get<OrderDetailCubit>(),
        child: BlocBuilder<OrderDetailCubit, AsyncValue<OrderModel>>(
          builder: (context, state) {
            final orderData = state.data;
            return Stack(
              children: [
                // MAP BACKGROUND (Placeholder)
                Container(
                  color: Colors.grey[200],
                  child: const Center(child: Text("Map Placeholder")),
                ),

                // ONLINE/OFFLINE TOGGLE
                Positioned(
                  top: 60,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: AppColors.primary, width: 1),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 6),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildToggleButton("Online", _isOnline, () {
                              setState(() {
                                _isOnline = true;
                              });
                            }),
                            _buildToggleButton("Offline", !_isOnline, () {
                              setState(() {
                                _isOnline = false;
                              });
                            }),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                // NEW ORDER AVAILABLE POPUP
                Positioned(
                  left: 15,
                  right: 15,
                  bottom: 26,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 8,
                          offset: Offset(0, 3),
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // HEADER
                        Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "New Order Available",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  "₹${orderData?.totalAmount ?? 0}",
                                  style: TextStyle(
                                    color: AppColors.primary,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                context.router.push(OrderDetailsRoute(
                                  orderData: orderData,
                                ));
                              },
                              child: Icon(Icons.close,
                                  color: AppColors.primary, size: 28),
                            ),
                          ],
                        ),

                        const SizedBox(height: 10),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                Assets.images.orderImage.path, // Replace
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        orderData?.items.first.itemName ?? "",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "  × ${orderData?.items.first.quantity ?? 1}",
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.sp,
                        ),
                        // PICKUP
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.radio_button_checked,
                                color: AppColors.primary),
                            SizedBox(width: 8),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pickup - ${orderData?.pickupLocation.shortLocation ?? ""} - ${orderData?.distanceOfPickup ?? "0"}km",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    orderData?.pickupLocation.storeName ?? "",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 20),

                        // DELIVERY
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.location_on, color: AppColors.primary),
                            SizedBox(width: 8),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Delivery - ${orderData?.deliveryLocation.shortLocation ?? ""} - ${orderData?.distanceOfDelivery ?? "0"}km",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    orderData?.customerName ?? "",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 18),

                        // BUTTON
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 14),
                            ),
                            onPressed: () {
                              context.router.push(OrderDetailsRoute(
                                orderData: state.data,
                              ));
                            },
                            child: const Text(
                              "View order details",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

Widget _buildToggleButton(String text, bool selected, VoidCallback onTap) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 6),
      decoration: BoxDecoration(
        color: selected ? AppColors.primary : Colors.transparent,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: selected ? Colors.white : AppColors.primary,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
