import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({super.key});

  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  final List<Order> orders = [
    Order(
      orderId: "#ORD004",
      orderDate: "Aug 27 at 14:30",
      productName: "Tender Coconut (Normal)",
      quantity: 4,
      totalPrice: 320,
      pickupLocation: "Thamel, Kathmandu",
      pickupDistance: "1.2 km away",
      deliveryLocation: "Lazimpat, Kathmandu",
      deliveryDistance: "3.5 km total",
      storeName: "Green Valley Coconut Store",
      recipientName: "Vikram Yadav",
    ),
    Order(
      orderId: "#ORD004",
      orderDate: "Aug 27 at 14:30",
      productName: "Tender Coconut (Normal)",
      quantity: 4,
      totalPrice: 320,
      pickupLocation: "Thamel, Kathmandu",
      pickupDistance: "1.2 km away",
      deliveryLocation: "Lazimpat, Kathmandu",
      deliveryDistance: "3.5 km total",
      storeName: "Green Valley Coconut Store",
      recipientName: "Vikram Yadav",
    ),
    Order(
      orderId: "#ORD004",
      orderDate: "Aug 27 at 14:30",
      productName: "Tender Coconut (Normal)",
      quantity: 4,
      totalPrice: 320,
      pickupLocation: "Thamel, Kathmandu",
      pickupDistance: "1.2 km away",
      deliveryLocation: "Lazimpat, Kathmandu",
      deliveryDistance: "3.5 km total",
      storeName: "Green Valley Coconut Store",
      recipientName: "Vikram Yadav",
    ),
    Order(
      orderId: "#ORD004",
      orderDate: "Aug 27 at 14:30",
      productName: "Tender Coconut (Normal)",
      quantity: 4,
      totalPrice: 320,
      pickupLocation: "Thamel, Kathmandu",
      pickupDistance: "1.2 km away",
      deliveryLocation: "Lazimpat, Kathmandu",
      deliveryDistance: "3.5 km total",
      storeName: "Green Valley Coconut Store",
      recipientName: "Vikram Yadav",
    ),
    Order(
      orderId: "#ORD004",
      orderDate: "Aug 27 at 14:30",
      productName: "Tender Coconut (Normal)",
      quantity: 4,
      totalPrice: 320,
      pickupLocation: "Thamel, Kathmandu",
      pickupDistance: "1.2 km away",
      deliveryLocation: "Lazimpat, Kathmandu",
      deliveryDistance: "3.5 km total",
      storeName: "Green Valley Coconut Store",
      recipientName: "Vikram Yadav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Order History",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF141414),
                  ),
                ),
                Text(
                  "Showing all your order history",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF141414),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                SvgPicture.string(AppSvg.filterSvg),
                SizedBox(width: 4.w),
                Text("Filter", style: TextStyle(fontSize: 14.sp)),
              ],
            ),
          ],
        ),
        toolbarHeight: 80.h,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.w),
        itemCount: orders.length,
        itemBuilder: (context, index) {
          return OrderCard(order: orders[index]);
        },
      ),
    );
  }
}

class Order {
  final String orderId;
  final String orderDate;
  final String productName;
  final int quantity;
  final int totalPrice;
  final String pickupLocation;
  final String deliveryLocation;
  final String storeName;
  final String recipientName;
  final String pickupDistance;
  final String deliveryDistance;

  Order({
    required this.orderId,
    required this.orderDate,
    required this.productName,
    required this.quantity,
    required this.totalPrice,
    required this.pickupLocation,
    required this.deliveryLocation,
    required this.storeName,
    required this.recipientName,
    required this.pickupDistance,
    required this.deliveryDistance,
  });
}

class OrderCard extends StatelessWidget {
  final Order order;

  const OrderCard({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(16.r),
      ),
      margin: EdgeInsets.only(bottom: 16.h),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Order ID, completed date, order status
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ORDER: ${order.orderId}",
                        style: TextStyle(
                          color: Color(0xFFCC0100),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 4.h,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF36B37E),
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: Text(
                          "Completed",
                          style: TextStyle(color: Color(0xFFFFFFFF)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    order.orderDate,
                    style: TextStyle(
                      color: Color(0xFF8B8B8B),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Inter",
                      height: 1.2,
                      letterSpacing: 0,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "${order.productName} ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                            ),
                          ),
                          Text(
                            "x ${order.quantity}",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "Inter",
                              fontSize: 18.sp,
                              color: Color(0xFF999999),
                              height: 1.2,
                              letterSpacing: 0,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "₹${order.totalPrice}",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700,
                          height: 1.0,
                          fontSize: 18.sp,
                          color: Color(0xFFCC0100),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Divider(
                    color: Color(0xFFF5F5F5),
                    height: 1,
                  ),
                  SizedBox(height: 16.h),
                  // Location route with custom icons
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Location route icon column
                      Positioned(
                        width: 16.w,
                        height: 74.60198974609375.h,
                        top: 49.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Pickup point - small circle
                            SvgPicture.string(
                              AppSvg.pickupSvg,
                              width: 16.w,
                              height: 16.h,
                            ),
                            // Connecting dashed line
                            SizedBox(
                              width: 1.w,
                              height: 40.h,
                              child: CustomPaint(
                                painter: DashedLinePainter(),
                              ),
                            ),
                            // Delivery point - location pin
                            SvgPicture.string(
                              AppSvg.locationSvg,
                              width: 16.w,
                              height: 19.6.h,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 12.w),
                      // Location details column
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Pickup location
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pickup - ${order.pickupLocation} - ${order.pickupDistance}",
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.28.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  order.storeName,
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    letterSpacing: -0.24.sp,
                                    fontSize: 14.sp,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFADADAD),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12.h),
                            // Delivery location
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Delivery - ${order.deliveryLocation} - ${order.deliveryDistance}",
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.28.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  order.recipientName,
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.24.sp,
                                    color: Color(0xFFADADAD),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
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
