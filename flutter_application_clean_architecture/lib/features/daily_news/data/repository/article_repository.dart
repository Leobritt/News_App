import 'package:flutter_application_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_application_clean_architecture/features/daily_news/domain/entities/article.dart';
import 'package:flutter_application_clean_architecture/features/daily_news/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  @override
  Future<DataState<List<ArticleEntity>>> getNewArticles() {
    // TODO: implement getNewArticles
    throw UnimplementedError();
  }
}