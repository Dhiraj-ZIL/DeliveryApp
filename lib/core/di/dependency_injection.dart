import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'dependency_injection.config.dart';

final get = GetIt.instance;
@InjectableInit()
Future<GetIt> configureDependencies() => get.init();

@module
abstract class RegisterModule {
  @singleton
  Dio get dio => Dio();

  @singleton
  FlutterSecureStorage get flutterSecureStorage => const FlutterSecureStorage();
}

@module
abstract class FirebaseModule {
  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  @lazySingleton
  FirebaseAuth get auth => FirebaseAuth.instance;
}
