import 'package:flutter_application_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_application_clean_architecture/features/daily_news/domain/entities/article.dart';

//bridge between the data layer and the domain layer
//interface with abstract class implementation will be in the data layer
abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewArticles();
}
