// 📦 Package imports:
import 'package:flashquiz_app/core/models/app_theme.dart';
import 'package:flashquiz_app/core/storage/data_sources/local_db_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ThemeCubit extends Cubit<AppThemeData> {
  final LocalDatabaseService database;

  ThemeCubit(this.database) : super(database.getAppThemeStateValue);

  void update(AppThemeData mode) async {
    await database.setAppThemeStateValue(mode);
    emit(mode);
  }
}
