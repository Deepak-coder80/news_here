import 'dart:convert';

import 'package:news_app/constants/apikey.dart';
import 'package:news_app/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];
  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=$Api_key";
    //response
    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          ArticleModel articleModel = ArticleModel(
              title: element["title"],
              author: element["author"],
              content: element["content"],
              description: element["description"],
              url: element["url"],
              urlToImage: element["urlToImage"],
              publishedAt: element["publishedAt"]);
        }
      });
    }
  }
}
