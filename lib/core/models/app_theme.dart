// 📦 Package imports:
import 'package:hive_flutter/hive_flutter.dart';

part 'app_theme.g.dart';

@HiveType(typeId: 3)
enum AppThemeData {
  @HiveField(0)
  light,

  @HiveField(1)
  dark,

  @HiveField(2)
  system
}
