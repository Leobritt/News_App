import 'package:flutter_application_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_application_clean_architecture/features/daily_news/domain/entities/article.dart';

//interface
abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewArticles();
}
