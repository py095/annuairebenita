import 'package:annuairebenita/Pages/NewpageAccueil.dart';
import 'package:annuairebenita/cells/view_item_widget.dart';
import 'package:flutter/material.dart';

class AccueilPage extends StatefulWidget {

  @override
  _AccueilPageState createState() => _AccueilPageState();
}

class _AccueilPageState extends State<AccueilPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
        body: ListView(
          children: <Widget>[
            Container(
              child: Expanded(
                child: Container(
                  margin:
                      EdgeInsets.only(left: 5, top: 20, right: 7),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Opacity(
                          opacity: 0.4,
                          child:
                          Center(
                             child :Text(
                              "Actualités ",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                letterSpacing: -0.07,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          )
                        ),
                      ),
                      NewpageAccueil(),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                ),
              ),
              constraints: BoxConstraints.expand(height: 419),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    left: 0,
                    top: 20,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Container(),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 80,
                    right: 0,
                    bottom: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 200,
                          child: Image.asset(
                            "images/restaurantR.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 20, top: 18, right: 20, bottom: 22),
                            child: Text(
                              "Meilleurs Restaurants à Kinshasa, République démocratique du Congo.",
                              style: TextStyle(
                                color: Color.fromARGB(255, 7, 7, 7),
                                fontSize: 14,
                                fontFamily: "Lato",
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Container(
                            height: 49,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.blue,
                              ),
                            ),
                            child: Center(
                              child: Text("Voir Plus"),
                            )),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 9,
                    top: 14,
                    right: 10,
                    child: Container(
                      height: 82,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 82,
                            height: 82,
                            child: Image.asset(
                              "images/logorestaurant.jpg",
                              height: 50,
                              width: 50,
                              fit: BoxFit.none,
                            ),
                          ),
                          Container(
                            width: 83,
                            height: 32,
                            margin: EdgeInsets.only(left: 8, top: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Restaurant",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 15, 15, 15),
                                      fontSize: 14,
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 3),
                                    child: Opacity(
                                      opacity: 0.4,
                                      child: Text(
                                        "Today, 1:45 PM",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 10,
                                          fontFamily: "Lato",
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                ),
              ),
              constraints: BoxConstraints.expand(height: 419),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    left: 0,
                    top: 20,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Container(),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 80,
                    right: 0,
                    bottom: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 200,
                          child: Image.asset(
                            "images/pullmana.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 20, top: 18, right: 20, bottom: 22),
                            child: Text(
                              "Meilleurs Hotel à Kinshasa, République démocratique du Congo.",
                              style: TextStyle(
                                color: Color.fromARGB(255, 7, 7, 7),
                                fontSize: 14,
                                fontFamily: "Lato",
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Container(
                            height: 49,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.blue,
                              ),
                            ),
                            child: Center(
                              child: Text("Voir Plus"),
                            )),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 9,
                    top: 14,
                    right: 10,
                    child: Container(
                      height: 82,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 82,
                            height: 82,
                            child: Image.asset(
                              "images/pullmana.jpg",
                              height: 50,
                              width: 50,
                              fit: BoxFit.none,
                            ),
                          ),
                          Container(
                            width: 83,
                            height: 32,
                            margin: EdgeInsets.only(left: 8, top: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Hotel",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 15, 15, 15),
                                      fontSize: 14,
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 3),
                                    child: Opacity(
                                      opacity: 0.4,
                                      child: Text(
                                        "Today, 1:45 PM",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 10,
                                          fontFamily: "Lato",
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}
