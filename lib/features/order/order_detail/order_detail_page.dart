import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flashquiz_app/core/models/order_model.dart';
import 'package:flashquiz_app/core/router/app_router.dart';
import 'package:flashquiz_app/core/ui/colors/app_colors.dart';
import 'package:flashquiz_app/core/widgets/dot_center_widget.dart';
import 'package:flashquiz_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class OrderDetailsPage extends StatefulWidget {
  final OrderModel? orderData;
  const OrderDetailsPage({super.key, this.orderData});

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  bool? _isOrderAccepted;
  bool? _isStartPickupEnabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // backgroundColor: AppColors.primary,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            context.router.maybePop();
          },
        ),

        title: const Text(
          "Order Details",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey.shade100,
          padding: EdgeInsets.all(20.sp),
          height: 1.sh,
          child: Column(
            children: [
              // Customer Information
              sectionContainer(
                context: context,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Customer Information",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    SizedBox(height: 14.sp),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: Assets.images.person.image().image,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.orderData?.customerName ?? "",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 2),
                              Text(
                                "Delivery • ${widget.orderData?.customerContact ?? ""}",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        circleIconButton(
                          icon: Icons.phone,
                          color: AppColors.brandGreen,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Order Summary
              sectionContainer(
                context: context,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Order Summary",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
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
                                    widget.orderData?.items.first.itemName ??
                                        "",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "  × ${widget.orderData?.items.first.quantity ?? 1}",
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
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.money, size: 20),
                        Icon(Icons.currency_rupee, size: 18),
                        Text(
                          " ${widget.orderData?.totalAmount ?? 0}",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.check_circle,
                          color: AppColors.brandGreen,
                          size: 18,
                        ),
                        SizedBox(width: 4),
                        Text(
                          widget.orderData?.paymentStatus ?? "",
                          style: TextStyle(
                              color: AppColors.brandGreen, fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Pickup & Delivery Location
              sectionContainer(
                context: context,
                child: Row(
                  children: [
                    SizedBox(
                      width: 35.sp,
                      height: 200,
                      child: Column(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                // Pickup Icon
                                Icon(Icons.radio_button_checked,
                                    color: AppColors.primary, size: 20),
                                // Dotted connector
                                Expanded(
                                  child: DottedLine(
                                    direction: Axis.vertical,
                                    dashLength: 4,
                                    dashGapLength: 4,
                                    dashColor: Colors.grey.shade400,
                                    lineThickness: 1.5,
                                  ),
                                ),
                                // Delivery Icon
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(Icons.location_on,
                                      color: Colors.red, size: 20),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              // const Icon(Icons.location_on,
                              //     color: Colors.red, size: 18),
                              // const SizedBox(width: 6),
                              const Text(
                                "Pickup Location",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              const Spacer(),
                              circleIconButton(
                                icon: Icons.phone,
                                color: AppColors.brandGreen,
                                onPressed: () {},
                                size: 36.sp,
                              ),
                              const SizedBox(width: 8),
                              circleIconButton(
                                icon: Icons.navigation_outlined,
                                color: AppColors.primary.withValues(alpha: 0.2),
                                iconColor: AppColors.primary,
                                size: 36.sp,
                                rotateAngle: 0.8,
                                onPressed: () {},
                              ),
                            ],
                          ),
                          Text(
                            widget.orderData?.pickupLocation.address ?? "",
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            "Green Valley Coconut • ${widget.orderData?.pickupLocation.contact ?? "1234567890"}",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          SizedBox(height: 32.sp),
                          Row(
                            children: [
                              Text(
                                "Delivery Location",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Spacer(),
                              circleIconButton(
                                icon: Icons.navigation_outlined,
                                color: AppColors.primary.withValues(alpha: 0.2),
                                iconColor: AppColors.primary,
                                size: 36.sp,
                                rotateAngle: 0.8,
                                onPressed: () {},
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          Text(
                            widget.orderData?.deliveryLocation.address ?? "",
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            widget.orderData?.customerName ?? "",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20.sp).copyWith(
          bottom: 30.sp +
              (Platform.isIOS ? 20.sp : 0), // Adjust for iOS bottom padding
        ),
        child: Row(
          children: [
            if (_isOrderAccepted == null || _isOrderAccepted == false)
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    context.maybePop();
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    side: const BorderSide(color: Colors.white),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    backgroundColor: Colors.grey.shade200,
                  ),
                  child: Text(
                    "Decline Order",
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
                  ),
                ),
              ),
            SizedBox(width: 20.sp),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  if (_isOrderAccepted == true) {
                    context.pushRoute(OrderTrackMapRoute(
                      orderData: widget.orderData,
                    ));
                  } else {
                    _isOrderAccepted = true;
                    setState(() {});
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                child: Text(
                  _isOrderAccepted == true ? "Start Pickup" : "Accept Order",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget sectionContainer(
      {required Widget child, required BuildContext? context}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.sp),
      child: Card(
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.only(
            top: 16.sp,
            bottom: 20.sp,
            left: 20.sp,
            right: 20.sp,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: child,
        ),
      ),
    );
  }
}
