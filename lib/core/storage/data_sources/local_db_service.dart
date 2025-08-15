import 'package:flashquiz_app/core/models/app_settings_model.dart';
import 'package:flashquiz_app/core/models/app_theme.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@singleton
class LocalDatabaseService {
  // final FlutterSecureStorage _secureStorage;

  LocalDatabaseService();

  late Box<AppSettingsModel> _settingBox;
  late Box<AppThemeData> _appThemeStateBox;

  @PostConstruct(preResolve: true)
  Future<void> initialize() async {
    await Hive.initFlutter();
    _registerAdapters();
    await _openBoxes();
  }

  Future<void> _openBoxes() async {
    _settingBox = await Hive.openBox<AppSettingsModel>('app_settings');
    _appThemeStateBox = await Hive.openBox("app_theme_state_box");
  }

  void _registerAdapters() {
    Hive.registerAdapter(AppSettingsModelAdapter());
    Hive.registerAdapter(AppThemeDataAdapter());
  }

  Box<AppSettingsModel> get settingBox => _settingBox;

  Future<void> setAppSettings(AppSettingsModel appSettings) async {
    await _settingBox.put('app_settings', appSettings);
  }

  Future<AppSettingsModel?> getAppSettings() async {
    return _settingBox.get('app_settings');
  }

  Future<void> deleteAppSettings() async {
    await _settingBox.delete('app_settings');
  }

  Future<void> closeBoxes() async {
    await _settingBox.close();
  }

  // Future<void> clearSecureStorage() async {
  //   await _secureStorage.deleteAll();
  // }

  Future<void> setAppThemeStateValue(AppThemeData themeState) {
    return _appThemeStateBox.put("app_theme_state", themeState);
  }

  AppThemeData get getAppThemeStateValue =>
      _appThemeStateBox.get("app_theme_state") ?? AppThemeData.dark;
}
