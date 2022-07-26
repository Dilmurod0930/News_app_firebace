import 'package:dio/dio.dart';
import 'package:news_app_firbace/model/news_model.dart';

class NewsService {
  static Future<List<NewsModel>> getData() async {
    Response res = await Dio().get("http://localhost:1337/api/news/");
    return (res.data as List).map((e) => NewsModel.fromJson(e)).toList();
  }
}
