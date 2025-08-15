import 'dart:developer';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';

class FirebaseRemoteConfigService {
  final FirebaseRemoteConfig _remoteConfig;

  // Default values for remote config parameters
  static const String _quizTimeLimitKey = 'quiz_time_limit_seconds';
  static const String _quizDifficultyKey = 'quiz_difficulty';
  static const String _quizThemeKey = 'quiz_theme';
  static const String _questionsAmount = 'questions_amount';

  static final Map<String, dynamic> _defaultValues = {
    // _quizTimeLimitKey: 60, // Default time limit: 60 seconds
    // _quizDifficultyKey: 'medium', // Default difficulty: medium
    // _quizThemeKey: 'light', // Default theme: light
    // _questionsAmount: 3
  };

  FirebaseRemoteConfigService(this._remoteConfig);

  static Future<FirebaseRemoteConfigService> init() async {
    final remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.ensureInitialized();
    await remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 10), // Timeout for fetching
      minimumFetchInterval: const Duration(seconds: 10), // How often to fetch
    ));
    await remoteConfig.setDefaults(_defaultValues);
    // Fetch and activate configuration
    try {
      await remoteConfig.fetchAndActivate();
      log('Remote config fetched  ${remoteConfig.getAll()}');
    } catch (e) {
      log('Error fetching remote config: $e');
      // Use defaults if fetch fails
    }
    return FirebaseRemoteConfigService(remoteConfig);
  }

  int get quizTimeLimitSeconds {
    return _remoteConfig.getInt(_quizTimeLimitKey);
  }

  String get quizDifficulty {
    return _remoteConfig.getString(_quizDifficultyKey);
  }

  String get quizTheme {
    return _remoteConfig.getString(_quizThemeKey);
  }

  int get questionsAmount {
    return _remoteConfig.getInt(_questionsAmount);
  }

  // Example of how to listen for config updates (optional)
  void listenForUpdates(VoidCallback onUpdate) {
    _remoteConfig.onConfigUpdated.listen((event) async {
      await _remoteConfig.activate();
      onUpdate();
    });
  }
}
