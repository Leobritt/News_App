import 'dart:io';
import 'package:dio/dio.dart';  
import 'package:flutter_application_clean_architecture/core/resources/constants/constants.dart';
import 'package:flutter_application_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_application_clean_architecture/features/daily_news/data/data_source/remote/news_api_service.dart';
import 'package:flutter_application_clean_architecture/features/daily_news/data/models/article.dart';
import 'package:flutter_application_clean_architecture/features/daily_news/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  //an instance of the news API service
  final NewsApiService _newsApiService;
  ArticleRepositoryImpl(this._newsApiService);

  @override
  //changed Entity for Model because we should not use entites in the data layer 
  Future<DataState<List<ArticleModel>>> getNewArticles() async{
    //avoid error
    try{
   
    //instance that calls the get news articles method 
    final httpResponse = await _newsApiService.getNewsArticles(
    //defined in the constants file apiKeys
    apiKey: newApiKey,
    country: countryQuery,
    category: categoryQuery,
    );
    //check that if sending the request to the server is ok
    //if is return data sucess 
    if(httpResponse.response.statusCode == HttpStatus.ok){
      return DataSucess(httpResponse.data);
    }else{
      return DataFailed(
        DioException(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          requestOptions: httpResponse.response.requestOptions,
          type: DioExceptionType.unknown,  
        )
      );
    }
  } on DioException catch(e){
    return DataFailed(e);
  }
}
}
