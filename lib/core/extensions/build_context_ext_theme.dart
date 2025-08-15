// 🐦 Flutter imports:

import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:flashquiz_app/core/extensions/build_context.dart';
import 'package:flashquiz_app/core/ui/colors/app_colors.dart';

extension ColorX on BuildContext {
  Color get background =>
      isDarkTheme ? AppColors.darkBackground : AppColors.lightBackground;
  Color get major => isDarkTheme ? AppColors.darkMajor : AppColors.lightMajor;
  Color get headline =>
      isDarkTheme ? AppColors.darkHeadline : AppColors.lightHeadline;
  Color get subtext =>
      isDarkTheme ? AppColors.darkSubtext : AppColors.lightSubtext;
  Color get outputBackground => isDarkTheme
      ? AppColors.outputDarkBackground
      : AppColors.outputLightBackground;
  Color get resultBackground => isDarkTheme
      ? AppColors.resultDarkBackground
      : AppColors.resultLightBackground;
  Color get resultText =>
      isDarkTheme ? AppColors.resultDarkText : AppColors.resultLightText;
  Color get inside =>
      isDarkTheme ? AppColors.darkInside : AppColors.lightInside;

  Color get neutralSuccess =>
      isDarkTheme ? AppColors.successDark : AppColors.successLight;
  Color get neutralSuccessText =>
      isDarkTheme ? AppColors.successTextDark : AppColors.successTextLight;
  Color get neutralError =>
      isDarkTheme ? AppColors.errorDark : AppColors.errorLight;
  Color get neutralErrorText =>
      isDarkTheme ? AppColors.errorTextDark : AppColors.errorTextLight;
  Color get neutralWarning =>
      isDarkTheme ? AppColors.warningDark : AppColors.warningLight;
  Color get neutralWarningText =>
      isDarkTheme ? AppColors.warningTextDark : AppColors.warningTextLight;

  Color get mapOverlay =>
      isDarkTheme ? AppColors.mapOverlayDark : AppColors.mapOverlayLight;
}

extension TextThemeX on BuildContext {
  TextTheme get _textTheme => Theme.of(this).textTheme;
  // ------------------Body---------------------
  TextStyle? get bodyLarge => _textTheme.bodyLarge
      ?.copyWith(color: subtext, fontWeight: FontWeight.w400);
  TextStyle? get bodyMedium => _textTheme.bodyMedium
      ?.copyWith(color: subtext, fontWeight: FontWeight.w400);
  TextStyle? get bodySmall => _textTheme.bodySmall
      ?.copyWith(color: subtext, fontWeight: FontWeight.w400);
  // ------------------Title---------------------
  TextStyle? get titleLarge => _textTheme.titleLarge?.copyWith(color: headline);
  TextStyle? get titleMedium =>
      _textTheme.titleMedium?.copyWith(color: headline);
  TextStyle? get titleSmall => _textTheme.titleSmall?.copyWith(color: headline);
  // ------------------Headline---------------------
  TextStyle? get headlineLarge =>
      _textTheme.headlineLarge?.copyWith(color: headline);
  TextStyle? get headlineMedium =>
      _textTheme.headlineMedium?.copyWith(color: headline);
  TextStyle? get headlineSmall =>
      _textTheme.headlineSmall?.copyWith(color: headline);
  // ------------------Label---------------------
  TextStyle? get labelLarge => _textTheme.labelLarge
      ?.copyWith(color: headline, fontWeight: FontWeight.w500);
  TextStyle? get labelMedium => _textTheme.labelMedium
      ?.copyWith(color: headline, fontWeight: FontWeight.w500);
  TextStyle? get labelSmall => _textTheme.labelSmall
      ?.copyWith(color: headline, fontWeight: FontWeight.w500);
  // ------------------Display---------------------
  TextStyle? get displayMedium => _textTheme.displayMedium
      ?.copyWith(color: headline, fontWeight: FontWeight.w400);
  TextStyle? get displaySmall => _textTheme.displaySmall
      ?.copyWith(color: headline, fontWeight: FontWeight.w400);
}
