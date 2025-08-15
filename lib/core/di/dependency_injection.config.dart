// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:dio/dio.dart' as _i361;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:flashquiz_app/core/base/base_repository.dart' as _i699;
import 'package:flashquiz_app/core/di/dependency_injection.dart' as _i275;
import 'package:flashquiz_app/core/repository/category_repository.dart'
    as _i1018;
import 'package:flashquiz_app/core/router/app_router.dart' as _i156;
import 'package:flashquiz_app/core/service/quiz_result_and_calculation/quiz_result_firebase_service.dart'
    as _i443;
import 'package:flashquiz_app/core/storage/data_sources/local_db_service.dart'
    as _i909;
import 'package:flashquiz_app/core/ui/theme/theme_cubit/theme_cubit.dart'
    as _i1050;
import 'package:flashquiz_app/features/auth/cubit/auth_cubit.dart' as _i1034;
import 'package:flashquiz_app/features/order/cubit/order_detail_cubit.dart'
    as _i514;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    final firebaseModule = _$FirebaseModule();
    gh.singleton<_i361.Dio>(() => registerModule.dio);
    await gh.singletonAsync<_i909.LocalDatabaseService>(
      () {
        final i = _i909.LocalDatabaseService();
        return i.initialize().then((_) => i);
      },
      preResolve: true,
    );
    gh.singleton<_i156.AppRouter>(() => _i156.AppRouter());
    gh.lazySingleton<_i974.FirebaseFirestore>(() => firebaseModule.firestore);
    gh.lazySingleton<_i59.FirebaseAuth>(() => firebaseModule.auth);
    gh.lazySingleton<_i1018.OrderRepository>(() => _i1018.OrderRepository(
          gh<_i361.Dio>(),
          gh<_i909.LocalDatabaseService>(),
        ));
    gh.singleton<_i699.BaseRepository>(() => _i699.BaseRepository(
          gh<_i361.Dio>(),
          gh<_i909.LocalDatabaseService>(),
        ));
    gh.factory<_i1050.ThemeCubit>(
        () => _i1050.ThemeCubit(gh<_i909.LocalDatabaseService>()));
    gh.factory<_i443.QuizResultFirebaseService>(
        () => _i443.QuizResultFirebaseService(
              gh<_i974.FirebaseFirestore>(),
              gh<_i59.FirebaseAuth>(),
            ));
    gh.factory<_i514.OrderDetailCubit>(() => _i514.OrderDetailCubit(
          gh<_i1018.OrderRepository>(),
          gh<_i699.BaseRepository>(),
        ));
    gh.factory<_i1034.AuthCubit>(
        () => _i1034.AuthCubit(gh<_i699.BaseRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i275.RegisterModule {}

class _$FirebaseModule extends _i275.FirebaseModule {}
