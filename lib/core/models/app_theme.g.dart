// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_theme.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppThemeDataAdapter extends TypeAdapter<AppThemeData> {
  @override
  final int typeId = 3;

  @override
  AppThemeData read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return AppThemeData.light;
      case 1:
        return AppThemeData.dark;
      case 2:
        return AppThemeData.system;
      default:
        return AppThemeData.light;
    }
  }

  @override
  void write(BinaryWriter writer, AppThemeData obj) {
    switch (obj) {
      case AppThemeData.light:
        writer.writeByte(0);
        break;
      case AppThemeData.dark:
        writer.writeByte(1);
        break;
      case AppThemeData.system:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppThemeDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
