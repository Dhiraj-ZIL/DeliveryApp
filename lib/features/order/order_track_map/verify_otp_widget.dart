import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:flashquiz_app/core/ui/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class VerifyOTPWidget extends StatefulWidget {
  const VerifyOTPWidget({super.key, required this.otp});
  final String otp;

  @override
  State<VerifyOTPWidget> createState() => _VerifyOTPWidgetState();
}

class _VerifyOTPWidgetState extends State<VerifyOTPWidget> {
  final List<TextEditingController> _otpControllers =
      List.generate(4, (_) => TextEditingController());
  int _focusedIndex = 0;

  void _onFocusChange(int index) {
    setState(() {
      _focusedIndex = index;
    });
  }

  void _onSubmit() {
    String otp = _otpControllers.map((controller) => controller.text).join();
    print("OTP Entered: $otp");
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      height: 384.h,
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.string(AppSvg.verifySvg),
          // Header
          Text(
            "Verify OTP & Deliver Order",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.h),

          // Instruction text
          SizedBox(
            width: 290.w,
            height: 44.h,
            child: Text(
              textAlign: TextAlign.center,
              softWrap: true,
              "Please ask the customer for their 4-digit OTP and enter it below to verify the delivery.",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFF6D6D6D),
              ),
            ),
          ),
          SizedBox(height: 24.sp),

          // OTP Input Fields
          Positioned(
            width: 350.w,
            height: 46.h,
            top: 314.h,
            left: 20.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) {
                return SizedBox(
                  width: 56.w,
                  height: 56.h,
                  child: TextField(
                    controller: _otpControllers[index],
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(
                      counterText: "",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Color(0xFFDFDFDF)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Color(0xFFDFDFDF),
                          width: 1.1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 1.1,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 12.h),
                    ),
                    onChanged: (value) {
                      if (value.isNotEmpty && index < 3) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                );
              }),
            ),
          ),
          SizedBox(height: 32.sp),

          // Action Buttons
          Positioned(
            width: 350.w,
            height: 46.h,
            top: 314.h,
            left: 20.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Cancel Button
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(163.w, 46.h),
                      backgroundColor: Color.fromARGB(255, 230, 233, 240)
                          .withValues(alpha: 0.6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(  
                      textAlign: TextAlign.center,
                      "Cancel",
                      style: TextStyle(
                          color: Color.fromARGB(255, 109, 109, 109),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),

                SizedBox(width: 10.w),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      context.maybePop();
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(180.w, 46.h),
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Text(
                      "Verify OTP",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
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
