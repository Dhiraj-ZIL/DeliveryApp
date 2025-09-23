import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyOrderPage extends StatelessWidget {
  const EmptyOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Ramlal,",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF141414),
                  letterSpacing: -0.4,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                "Available Deliveries",
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF141414),
                  // line height etc.
                  height: 1.2,
                  letterSpacing: -0.4,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.147),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/empty_order.png',
                      width: 95.w,
                      height: 95.h,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 18.h),
                    Center(
                      child: Text(
                        "No Orders Available",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                          letterSpacing: -0.4,
                          color: Color(0xFF141414),
                        ),
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      "There are currently no delivery orders in your area.\n"
                      "Check back soon for new opportunities!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF141414),
                        letterSpacing: -0.28,
                        height: 1.2,
                      ),
                    ),
                    SizedBox(height: 60.h),
                    SizedBox(
                      width: double.infinity,
                      height: 50.h,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFCC0100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          padding: EdgeInsets.zero,
                          fixedSize: Size(double.infinity, 50.h),
                        ),
                        child: Text(
                          "Refresh Orders",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
