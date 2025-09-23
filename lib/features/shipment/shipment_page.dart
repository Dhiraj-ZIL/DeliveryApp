import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:flashquiz_app/core/extensions/build_context_ext_theme.dart';
import 'package:flashquiz_app/features/shipment/shipment_details/shipment_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class ShipmentPage extends StatelessWidget {
  const ShipmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        centerTitle: false,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Shipment History",
              style: context.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Color(0xFF141414),
              ),
            ),
            Text(
              "Track all your deliveries",
              style: context.bodyMedium?.copyWith(
                fontWeight: FontWeight.w400,
                color: Color(0xFF141414),
              ),
            ),
          ],
        ),
        toolbarHeight: 80.h,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
            width: 217.w,
            height: 24.h,
            child: Text(
              "Recent Shipments",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xFF141414),
                height: 1.2,
                letterSpacing: 0,
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              children: [
                ShipmentCard(
                  shipmentNumber: "SHP004",
                  orderNumber: "ORD004",
                  date: "12/07/2025",
                  status: ShipmentStatus.inTransit,
                  pickupLocation: "Thamel, Kathmandu",
                  pickupDistance: "1.2 km away",
                  deliveryLocation: "Lazimpat, Kathmandu",
                  deliveryDistance: "3.5 km total",
                  driverName: "Vikram Yadav",
                  driverImage: AssetImage("assets/images/tenant.png"),
                  onNavigate: () {},
                  onDetails: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ShipmentDetailPage()));
                  },
                ),
                SizedBox(height: 16.h),
                ShipmentCard(
                  shipmentNumber: "SHP004",
                  orderNumber: "ORD004",
                  date: "12/07/2025",
                  status: ShipmentStatus.delivered,
                  pickupLocation: "Thamel, Kathmandu",
                  pickupDistance: "1.2 km away",
                  deliveryLocation: "Lazimpat, Kathmandu",
                  deliveryDistance: "3.5 km total",
                  driverName: "Vikram Yadav",
                  driverImage: AssetImage("assets/images/tenant.png"),
                  onNavigate: () {},
                  onDetails: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

enum ShipmentStatus { inTransit, delivered }

class ShipmentCard extends StatelessWidget {
  final String shipmentNumber;
  final String orderNumber;
  final String date;
  final ShipmentStatus status;
  final String pickupLocation;
  final String pickupDistance;
  final String deliveryLocation;
  final String deliveryDistance;
  final String driverName;
  final AssetImage driverImage;
  final VoidCallback? onNavigate;
  final VoidCallback? onDetails;

  const ShipmentCard({
    super.key,
    required this.shipmentNumber,
    required this.orderNumber,
    required this.date,
    required this.status,
    required this.pickupLocation,
    required this.pickupDistance,
    required this.deliveryLocation,
    required this.deliveryDistance,
    required this.driverName,
    required this.driverImage,
    this.onNavigate,
    this.onDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with shipment info and status
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Shipment #$shipmentNumber",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Order: #$orderNumber",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFCC0100),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          date,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(20, 20, 20, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: status == ShipmentStatus.inTransit
                      ? const Color(0xFFFAAA18)
                      : const Color(0xFF36B37E),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Text(
                  status == ShipmentStatus.inTransit
                      ? "In Transit"
                      : "Delivered",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),

          // Location route with custom icons
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Location route icon column
              Column(
                children: [
                  // Pickup point - small circle
                  Container(
                    width: 16.w,
                    height: 16.h,
                    child: SvgPicture.string(AppSvg.pickupSvg),
                  ),
                  // Connecting dashed line
                  Container(
                    width: 2.w,
                    height: 20.h,
                    child: CustomPaint(
                      painter: DashedLinePainter(),
                    ),
                  ),
                  // Delivery point - location pin
                  SizedBox(
                      width: 16.w,
                      height: 19.6.h,
                      child: SvgPicture.string(AppSvg.locationSvg))
                ],
              ),
              SizedBox(width: 12.w),

              // Location details column
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Pickup location
                    Text(
                      "Pickup - $pickupLocation - $pickupDistance",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 12.h),

                    // Delivery location
                    Text(
                      "Delivery - $deliveryLocation - $deliveryDistance",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),

          // Driver info and action buttons
          Row(
            children: [
              CircleAvatar(
                radius: 20.r,
                backgroundImage: driverImage,
              ),
              SizedBox(width: 12.w),
              Text(
                driverName,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF141414),
                ),
              ),
              const Spacer(),

              // Action buttons
              if (status == ShipmentStatus.inTransit) ...[
                GestureDetector(
                  onTap: onNavigate,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFE4E6),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.string(AppSvg.navigationSvg),
                        SizedBox(width: 4.w),
                        Text(
                          "Navigate",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFFE91E63),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
              ],

              GestureDetector(
                onTap: onDetails,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                  decoration: BoxDecoration(
                    color: const Color(0xFFCC0100),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.string(AppSvg.detailsSvg),
                      SizedBox(width: 4.w),
                      Text(
                        "Details",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Custom painter for dashed line connecting pickup and delivery points
class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFDFDFDF)
      ..strokeWidth = 1.5
      ..style = PaintingStyle.stroke;

    const dashHeight = 3.0;
    const dashSpace = 2.0;
    double startY = 0;

    while (startY < size.height) {
      canvas.drawLine(
        Offset(size.width / 2, startY),
        Offset(size.width / 2, startY + dashHeight),
        paint,
      );
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
