// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import 'package:flashquiz_app/core/extensions/build_context_ext_theme.dart';

extension BuildContextX on BuildContext {
  void showSnackBar(
    String text,
  ) {
    ScaffoldMessenger.of(this).clearSnackBars();
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        elevation: 0,
        content: Text(
          text,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: bodyMedium?.copyWith(color: major),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 16.sp,
          vertical: 14.sp,
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.sp)),
        backgroundColor: subtext,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void showTopBanner(String text) {
    final route = showFlushbar(
      context: this,
      flushbar: Flushbar(
        forwardAnimationCurve: Curves.decelerate,
        reverseAnimationCurve: Curves.easeOut,
        backgroundColor: subtext,
        flushbarStyle: FlushbarStyle.FLOATING,
        isDismissible: true,
        duration: const Duration(seconds: 3),
        flushbarPosition: FlushbarPosition.TOP,
        messageText: Text(
          text,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: bodyMedium?.copyWith(color: major),
        ),
      ),
    );

    Navigator.of(this, rootNavigator: true).push(route);
  }

  void showSnackbarOverModalSheet(String text) {
    final route = showFlushbar(
      context: this,
      flushbar: Flushbar(
        forwardAnimationCurve: Curves.decelerate,
        reverseAnimationCurve: Curves.easeOut,
        backgroundColor: subtext,
        flushbarStyle: FlushbarStyle.FLOATING,
        margin: EdgeInsets.symmetric(horizontal: 8.sp),
        isDismissible: true,
        padding: EdgeInsets.symmetric(
          horizontal: 16.sp,
          vertical: 14.sp,
        ),
        borderRadius: BorderRadius.circular(4.sp),
        duration: const Duration(seconds: 3),
        flushbarPosition: FlushbarPosition.BOTTOM,
        messageText: Text(
          text,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: bodyMedium?.copyWith(color: major),
        ),
      ),
    );
    Navigator.of(this, rootNavigator: true).push(route);
  }

  bool get isDarkTheme => Theme.of(this).brightness == Brightness.dark;
  bool get isFromOnboarding => router
      .currentHierarchy(asPath: true)
      .map((e) => e.name)
      .contains('/on-boarding-route');
}
