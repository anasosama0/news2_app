import 'package:dio/dio.dart';
import 'package:news2_app/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future <List<ArticleModel>> getNewsTopHeadlines({required String category}) async {
  try { Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=e27725027ecd42288205757a215d81f1');

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles']; 
    List<ArticleModel> articlesList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel.fromJson(article);
          articlesList.add(articleModel);
    }
    return articlesList;}
    catch(e){
      return [];
    }
  }
}
