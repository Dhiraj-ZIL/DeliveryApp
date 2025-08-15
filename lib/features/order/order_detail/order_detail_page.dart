import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flashquiz_app/core/ui/colors/app_colors.dart';
import 'package:flashquiz_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // backgroundColor: AppColors.primary,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {},
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
              _sectionContainer(
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
                            children: const [
                              Text(
                                "John Doe",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 2),
                              Text(
                                "Delivery • 0145425765",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        _circleIconButton(
                          icon: Icons.phone,
                          color: AppColors.brandSecondary,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Order Summary
              _sectionContainer(
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
                            children: const [
                              Text(
                                "Tender Coconut (Normal)  × 4",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Icon(Icons.currency_rupee, size: 18),
                        Text(
                          "320",
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(width: 8),
                        Icon(Icons.check_circle, color: Colors.green, size: 18),
                        SizedBox(width: 4),
                        Text(
                          "Paid",
                          style: TextStyle(color: Colors.green, fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Pickup & Delivery Location
              _sectionContainer(
                context: context,
                child: Row(
                  children: [
                    SizedBox(
                      width: 35.sp,
                      height: 140,
                      child: Column(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                // Pickup Icon
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(Icons.circle_outlined,
                                      color: Colors.red, size: 20),
                                ),
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
                              _circleIconButton(
                                icon: Icons.phone,
                                color: Colors.green,
                                onPressed: () {},
                                size: 36.sp,
                              ),
                              const SizedBox(width: 8),
                              _circleIconButton(
                                icon: Icons.navigation_outlined,
                                color: AppColors.primary.withValues(alpha: 0.2),
                                iconColor: AppColors.primary,
                                size: 36.sp,
                                onPressed: () {},
                              ),
                            ],
                          ),
                          SizedBox(height: 6.sp),
                          const Text(
                            "West Patel Nagar, West\n Delhi, 110008, India",
                            style: TextStyle(fontSize: 14),
                          ),
                          const Text(
                            "Green Valley Coconut • 0145425765",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          SizedBox(height: 32.sp),
                          Row(
                            children: const [
                              Text(
                                "Delivery Location",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            "West Patel Nagar, West\n Delhi, 110008, India",
                            style: TextStyle(fontSize: 14),
                          ),
                          const Text(
                            "John Doe",
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
            Expanded(
              child: OutlinedButton(
                onPressed: () {},
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
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                child: Text(
                  "Accept Order",
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

  static Widget _sectionContainer(
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

  static Widget _circleIconButton({
    required IconData icon,
    required Color color,
    Color? iconColor,
    required VoidCallback onPressed,
    double? size,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: size ?? 44.sp,
        height: size ?? 44.sp,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: iconColor ?? Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
