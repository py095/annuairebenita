import 'package:flutter/material.dart';

class AccueilPage extends StatefulWidget {
  @override
  _AccueilPageState createState() => _AccueilPageState();
}

class _AccueilPageState extends State<AccueilPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.calendar_view_day,
            color: Colors.white,
          ),
          title: Center(
            child: Text(
              "Annuaire",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          actions: <Widget>[
//          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () => {}),
            IconButton(icon: Icon(Icons.people), onPressed: () => {})
          ],
        ),
      ),
    );
  }
}
