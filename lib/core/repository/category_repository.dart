import 'package:core/core.dart';
import 'package:flashquiz_app/core/base/base_repository.dart';
import 'package:flashquiz_app/core/models/category_response_model.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CategoryRepository extends BaseRepository {
  CategoryRepository(super.dio, super.database);

  Future<List<CategoryResponseModel>>? getCategoryList() async {
    final response = await dio.get(
      ApiPaths.getCategoryList,
    );
    return (response.data['trivia_categories'] as List)
        .map((e) => CategoryResponseModel.fromJson(e))
        .toList();
  }
}
