
import 'package:flutter_application_clean_architecture/core/resources/constants/constants.dart';
import 'package:flutter_application_clean_architecture/features/daily_news/data/models/article.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'news_api_service.g.dart';


//this class will responsible for handling all the network methods
//because retrofit generates code we must specify the dot g file 

@RestApi(baseUrl: NewsApiBaseURL )
//need to pass a base url for the generator know it's a retrofit interface
abstract class NewsApiService {
  //factory constructor that accepts dio 
  factory NewsApiService(Dio dio) = _NewsApiService;

  //method thaht will request the api
  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles({
    @Query("apiKey") String ? apiKey,
    @Query("country") String ? country,
    @Query("category") String ? category,
//telling the retrofit to generate a method can interbakky uses the dio to make a get netowrk call to an endopint name top headliines
});
}