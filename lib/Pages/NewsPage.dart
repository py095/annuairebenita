import 'package:annuairebenita/cells/news_item_widget.dart';
import 'package:flutter/material.dart';

class NewsPages extends StatefulWidget {
  @override
  _NewsPagesState createState() => _NewsPagesState();
}

class _NewsPagesState extends State<NewsPages> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Center(
          child: Text(
            "News",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
          actions: <Widget>[
//          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () => {}),
            IconButton(icon: Icon(Icons.people), onPressed: () => {})
          ],

        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 244, 242, 244),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: ListView.builder(
                    itemCount: 15,
                    itemBuilder: (context, index) => NewsItemWidget(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
