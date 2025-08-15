// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:hexcolor/hexcolor.dart';

class AppColors {
  AppColors._();
  // Dark theme colors
  static Color darkMajor = HexColor("#28282B");
  static Color darkHeadline = HexColor("#F5F5F5");
  static Color darkSubtext = HexColor("#D4D4D4");
  static Color darkBackground = HexColor("#1A1D21");
  static Color darkInside = HexColor("#4B4B4B");
  // Light theme colors
  static Color lightMajor = HexColor("#F5F5F5");
  static Color lightHeadline = HexColor("#343434");
  static Color lightSubtext = HexColor("#707070");
  static Color lightBackground = HexColor("#FDFDFD");
  static Color lightInside = HexColor("#E0E0E0");
  // Neutral colors
  static Color black = Colors.black;
  static Color white = HexColor("#F5F5F5");
  static Color neutralBlue = HexColor("#0099EF");
  // Tri-State colors
  static Color successDark = HexColor("#233830");
  static Color successLight = HexColor("#CDF1E4");
  static Color successTextDark = HexColor("#6FCC80");
  static Color successTextLight = HexColor("#0E8524");
  static Color errorDark = HexColor("#5A3F38");
  static Color errorLight = HexColor("#F4E5E0");
  static Color errorTextDark = HexColor("#F47C6A");
  static Color errorTextLight = HexColor("#E43116");
  static Color warningDark = HexColor("#3F342A");
  static Color warningLight = HexColor("#F5E3D3");
  static Color warningTextDark = HexColor("#F4B575");
  static Color warningTextLight = HexColor("#F88105");
  // Brand colors
  static Color primary = HexColor("#CC0001");
  static Color brandSecondary = HexColor("#34A853");
  // Random colors
  static Color stepIndicator = HexColor("#FFE6DB");
  static Color boundaryColor = HexColor("#2AB4FE");
  static Color defaultMeasurementBoxColor =
      HexColor("#00355BA6").withValues(alpha: 0.65);
  // Output background
  static Color outputDarkBackground = HexColor("#161616");
  static Color outputLightBackground = HexColor("#BDBDBD");
  // Result background and text
  static Color resultDarkBackground = HexColor("#475462");
  static Color resultLightBackground = HexColor("#E7E7E7");
  static Color resultDarkText = HexColor("#FFE6DB");
  static Color resultLightText = HexColor("#F38450");
  // Map overlay colors
  static Color mapOverlayDark = HexColor("#475462");
  static Color mapOverlayLight = HexColor("#FFFFFF");

  //button progress color
  static Color buttonProgress = HexColor("#FD862A");
  static Color subTextColor = HexColor("#BBBBBB");
  static Color disabledBackgroundColor = HexColor("#E6E9F099");

  static List<Color> gradient = [
    HexColor("#0083C5"),
    HexColor("#008AFE"),
  ];

  static Color dragHandle = HexColor("#9A9C9E");
  static Color keyPointHintBg = HexColor("#124A83");

  static List<Color> allColorPickerGradientColors = [
    HexColor("#F55555"),
    HexColor("#75E14E"),
    HexColor("#0099EF"),
    HexColor("#D9D9D9"),
    HexColor("#EF3F24"),
    HexColor("#F3BC8A"),
  ];

  static List<Color> colorPickerDefaultColors = [
    HexColor("#00355BA6").withValues(alpha: 0.65),
    HexColor("#2AB4FE").withValues(alpha: 0.26),
    HexColor("#000000").withValues(alpha: 0.4),
    HexColor("#004C8F").withValues(alpha: 0.4),
    HexColor("#F59F55").withValues(alpha: 0.3),
    HexColor("#DF1F02").withValues(alpha: 0.2),
    HexColor("#7092AF").withValues(alpha: 0.6),
    HexColor("#FF5050").withValues(alpha: 0.5),
    HexColor("#0ABE4F").withValues(alpha: 0.4),
    HexColor("#6C3BDD").withValues(alpha: 0.5),
    HexColor("#29629A").withValues(alpha: 0.4),
  ];

  static List<Color> brandGradient = [
    HexColor("#EF3E23"),
    HexColor("#F06341"),
  ];

  static Color avatarBorder = HexColor("#FE5B00");
  static Color brandPrimary = HexColor("#EF3E23");
}
