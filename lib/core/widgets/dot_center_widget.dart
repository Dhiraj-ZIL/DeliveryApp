import 'package:flashquiz_app/core/ui/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget dotCenterWidget({
  double size = 10.0,
}) {
  return Container(
    width: 20,
    height: 20,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: Colors.grey.shade400,
        width: 2,
      ),
    ),
    child: Center(
      child: Text(
        "•", // bullet symbol looks better than "."
        style: TextStyle(
          fontSize: 22, // adjust size for perfect look
          height: 0.7, // centers vertically
          color: AppColors.brandPrimary,
        ),
      ),
    ),
  );
}

Widget circleIconButton({
  required IconData icon,
  required Color color,
  Color? iconColor,
  required VoidCallback onPressed,
  double? size,
  double? rotateAngle,
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
      child: Transform.rotate(
        angle: rotateAngle ?? 0, // Rotate the icon slightly
        child: Icon(
          icon,
          color: iconColor ?? Colors.white,
          size: 25,
        ),
      ),
    ),
  );
}
