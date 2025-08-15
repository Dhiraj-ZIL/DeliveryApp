import 'package:flashquiz_app/core/base/base_repository.dart';
import 'package:flashquiz_app/core/models/category_response_model.dart';
import 'package:flashquiz_app/core/models/quiz_response_model.dart';
import 'package:flashquiz_app/core/gen/enums.dart';
import 'package:injectable/injectable.dart';
import 'package:core/core.dart';

@lazySingleton
class QuizRepository extends BaseRepository {
  QuizRepository(super.dio, super.database);

  Future<List<QuizResponseModel>>? getAllQuizData({
    required DifficultyLevel? difficulty,
    QuestionType? type,
    int? amount,
    int? category,
  }) async {
    final data = {
      "amount": amount,
      "category": category,
      "difficulty": difficulty?.name ?? "easy",
      "type": type?.name ?? "multiple",
    };
    final response = await dio.get(
      ApiPaths.getCategorizedQuiz,
      queryParameters: data,
    );
    if (response.data != null) {
      return (response.data['results'] as List)
          .map((e) => QuizResponseModel.fromJson(e))
          .toList();
    } else {
      return [];
    }
  }

  Future<List<CategoryResponseModel>>? getCategoryList() async {
    final response = await dio.get(
      ApiPaths.getCategoryList,
    );
    return (response.data['trivia_categories'] as List)
        .map((e) => CategoryResponseModel.fromJson(e))
        .toList();
  }
}
