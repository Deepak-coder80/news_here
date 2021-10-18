import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "News",
              style: TextStyle(
                  color: Colors.deepPurple, fontWeight: FontWeight.bold),
            ),
            Text(" Here",
                style: TextStyle(
                    color: Colors.purple, fontWeight: FontWeight.bold))
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String imageUrl, categoryName;
  const CategoryTile(
      {Key? key, required this.imageUrl, required this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.network(
            imageUrl,
            width: 120,
            height: 60,
          ),
        ],
      ),
    );
  }
}
