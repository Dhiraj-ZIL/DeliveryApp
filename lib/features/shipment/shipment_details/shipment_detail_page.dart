import 'package:auto_route/auto_route.dart';
import 'package:flashquiz_app/core/widgets/dot_center_widget.dart';
import 'package:flashquiz_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShipmentDetailPage extends StatelessWidget {
  const ShipmentDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            // Header container with shipment information
            Container(
              width: 430.w,
              height: 72.h,
              margin: EdgeInsets.only(top: 20.h),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Container for back button and shipment info
                  Container(
                    height: 39.h,
                    width: 218.w,
                    margin: EdgeInsets.only(top: 17.h, left: 12.w),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Padding(
                            padding: EdgeInsets.only(top: 2.h),
                            child: Icon(Icons.arrow_back_ios_new_rounded,
                                size: 30.sp),
                          ),
                        ),
                        SizedBox(width: 6.w),
                        // Container for shipment and order details
                        Container(
                          height: 39.h,
                          width: 182.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Shipment number display
                              Text(
                                "Shipment #SHP004",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              // Order number display
                              Text(
                                "Order: #ORD004",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2,
                                  color: const Color(0xFFCC0100),
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Status badge showing shipment status (e.g., In Transit)
                  Container(
                    width: 80.w,
                    height: 26.h,
                    margin: const EdgeInsets.fromLTRB(0, 0, 12, 0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFAAA18),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "In Transit",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Customer information section with white background and rounded corners
                  Container(
                    width: 390.w,
                    height: 120.h,
                    padding: EdgeInsets.only(left: 20.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 16.h),
                        Text(
                          "Customer Information",
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        SizedBox(height: 14.sp),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  Assets.images.person.image().image,
                            ),
                            // Customer details section with name and contact info
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Customer name
                                  Text(
                                    "Vikram  Yadav",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 2),
                                  // Customer contact information
                                  Text(
                                    "Delivery - 0145425765 ",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            circleIconButton(
                              size: 36.h,
                              icon: Icons.phone,
                              color: Color.fromRGBO(54, 179, 126, 0.2),
                              iconColor: Colors.green,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.h),
                  _orderSummary(),
                  SizedBox(height: 16.h),
                  _orderTrackingTimeline(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  static Widget _orderTrackingTimeline() {
    // Timeline data with status updates
    final List<Map<String, dynamic>> timelineData = [
      {
        'icon': Icons.check_circle,
        'status': "Order picked up from merchant",
        'time': "15:45",
        'isActive': true,
      },
      {
        'icon': Icons.check_circle,
        'status': "In route to delivery location",
        'time': "16:45",
        'isActive': true,
      },
      {
        'icon': Icons.check_circle,
        'status': "Driver reached delivery area",
        'time': "17:45",
        'isActive': true,
      },
      {
        'icon': Icons.info,
        'status': "Delivered to customer",
        'time': "18:45",
        'isActive': true,
      },
    ];

    return Container(
      width: 390.w,
      constraints: BoxConstraints(maxHeight: 400.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFFFFFFFF),
      ),
      child: SingleChildScrollView(
        child: Container(
          width: 276.w,
          padding: EdgeInsets.symmetric(vertical: 16.h),
          margin: EdgeInsets.only(left: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tracking Timeline",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.2,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
              ),
              Container(
                width: 276.w,
                margin: EdgeInsets.only(top: 16.h),
                child: ListView.builder(
                  padding: EdgeInsets.only(bottom: 8.h),
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: timelineData.length,
                  itemBuilder: (context, index) {
                    final item = timelineData[index];
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            item['icon'] as IconData,
                            color: item['isActive'] as bool
                                ? const Color(0xFFCC0100)
                                : Colors.grey[400],
                            size: 24,
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item['status'] as String,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2,
                                    letterSpacing: 0,
                                    color: (item['status'] as String) ==
                                            "Delivered to customer"
                                        ? const Color(0xFFCC0100)
                                        : const Color(0xFF1A1A1A),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  item['time'] as String,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xFFCC0100),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _orderSummary() {
    return Container(
      width: 390.w,
      height: 153.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xFFFFFFFF),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.h),
          Container(
            width: 128.w,
            height: 18.h,
            margin: EdgeInsets.only(left: 20.w),
            child: Text(
              "Order Summary",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                height: 1.2,
                letterSpacing: 0,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            width: 350.w,
            height: 83.h,
            margin: EdgeInsets.only(left: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: 350.w,
                    height: 46.h,
                    child: Row(
                      children: [
                        Container(
                          width: 46.w,
                          height: 46.h,
                          decoration: BoxDecoration(
                            color: Color(0xFFF2F2F2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'assets/images/coconut.png',
                          ),
                        ),
                        Container(
                            width: 235.w,
                            height: 20.h,
                            margin: EdgeInsets.only(left: 12.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Tender Coconut  (Normal)",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      height: 1.2,
                                      color: Color(0xff000000),
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Spacer(),
                                Text(
                                  "x 4",
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      color: Color(0xFF999999),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ))
                      ],
                    )),
                SizedBox(height: 12.h),
                SizedBox(
                  width: 155.w,
                  height: 25.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8.h,
                      ),
                      SizedBox(
                        width: 77.w,
                        height: 25.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.payment_rounded),
                            const Spacer(),
                            Text(
                              "₹ 320",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  height: 1),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 77.w,
                        height: 25.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Spacer(),
                            Icon(Icons.check_circle, color: Colors.green),
                            const Spacer(),
                            Text(
                              "Paid",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.green,
                                  height: 1),
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
        ],
      ),
    );
  }
}
