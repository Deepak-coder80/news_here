import 'package:flutter/material.dart';
import 'package:news_app/constants/news.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/screens/home.dart';

class CategoryNews extends StatefulWidget {
  final String cata;
  const CategoryNews({Key? key, required this.cata}) : super(key: key);

  @override
  _CategoryNewsState createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  List<ArticleModel> articles = <ArticleModel>[];
  bool loading = true;
  @override
  void initState() {
    super.initState();
    getCataNews();
  }

  getCataNews() async {
    CataNews newsClass = CataNews();
    await newsClass.getNews(widget.cata);
    articles = newsClass.news;
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "News",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(" Here",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
          ],
        ),
        actions: [
          Opacity(
              opacity: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const Icon(Icons.save),
              ))
        ],
        elevation: 0,
        backgroundColor: Colors.purple,
      ),
      body: loading
          ? Center(
              child: Container(
                child: const CircularProgressIndicator(
                  color: Colors.purple,
                ),
              ),
            )
          : SingleChildScrollView(
              child: Container(
                  child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 18),
                    margin: const EdgeInsets.all(8),
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: articles.length,
                      itemBuilder: (context, index) {
                        return BlogTile(
                          imageUrl: articles[index].urlToImage,
                          title: articles[index].title,
                          des: articles[index].description,
                          url: articles[index].url,
                        );
                      },
                    ),
                  ),
                ],
              )),
            ),
    );
  }
}
