// 🐦 Flutter imports:
import 'package:flashquiz_app/core/ui/colors/app_colors.dart';
import 'package:flashquiz_app/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pop_scope_aware_cupertino_route/pop_scope_aware_cupertino_route.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
            TargetPlatform.iOS: PopScopeAwareCupertinoPageTransitionBuilder(),
          },
        ),
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          seedColor: AppColors.primary,
          secondary: AppColors.primary,
        ),
        appBarTheme: _lightAppBarTheme,
        scaffoldBackgroundColor: AppColors.lightBackground,
        textTheme: _textTheme.apply(
          fontFamily: FontFamily.roboto,
          fontSizeFactor: 1,
        ),
        inputDecorationTheme: _inputDecorationThemeLight,
        elevatedButtonTheme: _elevatedButtonTheme,
        textButtonTheme: _textButtonTheme,
        outlinedButtonTheme: _outlinedButtonTheme,
        bottomNavigationBarTheme: _lightNavigationTheme,
        progressIndicatorTheme: _lightProgressIndicatorTheme,
      );

  static ThemeData get dark => ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
            TargetPlatform.iOS: PopScopeAwareCupertinoPageTransitionBuilder(),
          },
        ),
        brightness: Brightness.dark,
        textTheme: _textTheme.apply(
          fontFamily: FontFamily.roboto,
          fontSizeFactor: 1,
        ),
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: AppColors.primary,
          secondary: AppColors.primary,
        ),
        appBarTheme: _darkAppBarTheme,
        scaffoldBackgroundColor: AppColors.darkBackground,
        inputDecorationTheme: _inputDecorationThemeDark,
        elevatedButtonTheme: _elevatedButtonTheme,
        textButtonTheme: _textButtonTheme,
        outlinedButtonTheme: _outlinedButtonTheme,
        bottomNavigationBarTheme: _darkNavigationTheme,
        progressIndicatorTheme: _darkProgressIndicatorTheme,
      );

  static TextTheme get _textTheme => TextTheme(
        bodyLarge: TextStyle(
          fontSize: 16.sp,
          height: (24.sp / 16.sp),
          letterSpacing: 0.5.sp,
        ),
        bodyMedium: TextStyle(
          fontSize: 14.sp,
          height: (20.sp / 14.sp),
          letterSpacing: 0.25.sp,
        ),
        bodySmall: TextStyle(
          fontSize: 12.sp,
          height: (16.sp / 12.sp),
          letterSpacing: 0.4.sp,
        ),
        labelLarge: TextStyle(
          fontSize: 14.sp,
          height: (20.sp / 14.sp),
          letterSpacing: 0.1.sp,
        ),
        labelMedium: TextStyle(
          fontSize: 12.sp,
          height: (16.sp / 12.sp),
          letterSpacing: 0.5.sp,
        ),
        labelSmall: TextStyle(
          fontSize: 11.sp,
          height: (16.sp / 11.sp),
          letterSpacing: 0.5.sp,
        ),
        titleLarge: TextStyle(
          fontSize: 22.sp,
          height: (28.sp / 22.sp),
        ),
        titleMedium: TextStyle(
          fontSize: 16.sp,
          height: (24.sp / 16.sp),
          letterSpacing: 0.15.sp,
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          fontSize: 14.sp,
          height: (20.sp / 14.sp),
        ),
        headlineLarge: TextStyle(
          fontSize: 32.sp,
          height: (40.sp / 32.sp),
        ),
        headlineMedium: TextStyle(
          fontSize: 28.sp,
          height: (36.sp / 28.sp),
        ),
        headlineSmall: TextStyle(
          fontSize: 24.sp,
          height: (32.sp / 24.sp),
        ),
        displayLarge: TextStyle(
          fontSize: 57.sp,
          height: (64.sp / 57.sp),
        ),
        displayMedium: TextStyle(
          fontSize: 45.sp,
          height: (52.sp / 45.sp),
        ),
        displaySmall: TextStyle(
          fontSize: 36.sp,
          height: (44.sp / 36.sp),
        ),
      );

  static InputDecorationTheme get _inputDecorationThemeDark {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
        color: AppColors.darkInside,
      ),
    );

    return InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.never,
      labelStyle: _textTheme.labelLarge?.copyWith(
        color: AppColors.darkHeadline,
      ),
      errorStyle: _textTheme.bodySmall?.copyWith(
        color: AppColors.errorTextDark,
      ),
      hintStyle: _textTheme.labelLarge?.copyWith(
        color: AppColors.darkSubtext,
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 12.sp,
      ),
      enabledBorder: border,
      focusedBorder: border,
      errorBorder: border,
      focusedErrorBorder: border,
    );
  }

  static InputDecorationTheme get _inputDecorationThemeLight {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
        color: AppColors.lightInside,
      ),
    );

    return InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.never,
      labelStyle: _textTheme.labelLarge?.copyWith(
        color: AppColors.lightHeadline,
      ),
      errorStyle: _textTheme.bodySmall?.copyWith(
        color: AppColors.errorTextLight,
      ),
      hintStyle: _textTheme.labelLarge?.copyWith(
        color: AppColors.lightSubtext,
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 12.sp,
      ),
      enabledBorder: border,
      focusedBorder: border,
      errorBorder: border,
      focusedErrorBorder: border,
    );
  }

  static ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: WidgetStateProperty.all(
            _textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500)),
        elevation: WidgetStateProperty.all(0),
        padding: WidgetStateProperty.all(EdgeInsets.zero),
        foregroundColor: WidgetStateProperty.all(AppColors.white),
        backgroundColor: WidgetStateProperty.all(Colors.transparent),
        shadowColor: WidgetStateProperty.all(Colors.transparent),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(Size(double.infinity, 44.sp)),
        shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(27.sp))),
      ),
    );
  }

  static OutlinedButtonThemeData get _outlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        textStyle: WidgetStateProperty.all(
            _textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500)),
        elevation: WidgetStateProperty.all(0),
        padding: WidgetStateProperty.all(EdgeInsets.zero),
        side: WidgetStateProperty.all(const BorderSide()),
        shadowColor: WidgetStateProperty.all(Colors.transparent),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(Size(double.infinity, 44.sp)),
        shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(27.sp))),
      ),
    );
  }

  static TextButtonThemeData get _textButtonTheme {
    return TextButtonThemeData(
      style: ButtonStyle(
        textStyle: WidgetStateProperty.all(
            _textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500)),
        foregroundColor: WidgetStateProperty.all(AppColors.primary),
        elevation: WidgetStateProperty.all(0),
        padding:
            WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 8)),
      ),
    );
  }

  static AppBarTheme get _darkAppBarTheme => AppBarTheme(
        backgroundColor: AppColors.darkBackground,
        foregroundColor: AppColors.darkHeadline,
        elevation: 0,
        centerTitle: true,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        toolbarHeight: 40.sp,
        titleTextStyle: TextStyle(
          fontSize: 18.sp,
          height: (28.sp / 18.sp),
          color: AppColors.darkHeadline,
          fontWeight: FontWeight.w500,
        ),
        shape: Border(
          bottom: BorderSide(
            color: AppColors.darkMajor,
            width: 1,
          ),
        ),
      );
  static AppBarTheme get _lightAppBarTheme => AppBarTheme(
        backgroundColor: AppColors.lightBackground,
        foregroundColor: AppColors.lightHeadline,
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 40.sp,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        titleTextStyle: TextStyle(
          fontSize: 18.sp,
          height: (28.sp / 18.sp),
          color: AppColors.lightHeadline,
          fontWeight: FontWeight.w500,
        ),
        shape: Border(
          bottom: BorderSide(
            color: AppColors.lightMajor,
            width: 1,
          ),
        ),
      );
  static BottomNavigationBarThemeData get _darkNavigationTheme =>
      BottomNavigationBarThemeData(
        backgroundColor: AppColors.darkBackground,
        selectedItemColor: AppColors.darkHeadline,
        type: BottomNavigationBarType.fixed,
      );
  static BottomNavigationBarThemeData get _lightNavigationTheme =>
      BottomNavigationBarThemeData(
        backgroundColor: AppColors.lightBackground,
        selectedItemColor: AppColors.neutralBlue,
        type: BottomNavigationBarType.fixed,
      );
  static ProgressIndicatorThemeData get _darkProgressIndicatorTheme =>
      ProgressIndicatorThemeData(
        circularTrackColor: AppColors.darkSubtext,
        color: AppColors.darkHeadline,
      );
  static ProgressIndicatorThemeData get _lightProgressIndicatorTheme =>
      ProgressIndicatorThemeData(
        circularTrackColor: AppColors.lightSubtext,
        color: AppColors.lightHeadline,
      );
}
