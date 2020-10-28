
import 'package:annuairebenita/Pages/LoginLo/welcome_widget.dart';
import 'package:annuairebenita/ui/signin/signin.dart';
import 'package:flutter/material.dart';

import '../RecherchePage.dart';
import 'AccueilPage.dart';
import 'NewsPage.dart';
import 'ProfilsPage.dart';
import 'essayePage.dart';

void main() {
  runApp(new HomePage());
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}
class _HomePageState extends State<HomePage> with TickerProviderStateMixin{

  PageController _pageController = PageController();

  List<Widget> _screens = [NewsPages(), LoginPage(), ProfileWidget()];

  int _current = 0;
  Widget callPage(int current){
    switch(current){
      case 0: return AccueilPage();
      case 1: return  NewsPages();
      case 2: return LoginPage();
      case 3: return ProfileWidget();
      break;
      default: return AccueilPage();
    }
  }
  int _selectedIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: callPage(  _current,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _current,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 11,
        unselectedFontSize: 10,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Accieul"),
              backgroundColor: Colors.lightBlueAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.autorenew),
              title: Text("News"),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("Recherche"),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              title: Text("Profils"),
              backgroundColor: Colors.blue),
        ],
        onTap: (index) {
          setState(() {
            _current = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: openAlertreBOX,
        icon: Icon(Icons.ac_unit),
        label: Text("Menu"),
      ),
    );
  }

  openAlertreBOX() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            contentPadding: EdgeInsets.only(top: 10.0),
            content: Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              width: 470.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Text(
                          "ANNUAIRE",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Divider(
                    color: Colors.black,
                    height: 5.0,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 250,
                    height: 90,
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.ac_unit,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text("ACCUEIL",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white),),
                            )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 90,
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.monetization_on,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child:
                                Text(
                                  "Nos produits ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                            ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 90,
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.monetization_on,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: ListView(
                              children: <Widget>[
                                Text(
                                  "Favoris ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            )),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 90,
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.monetization_on,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: ListView(
                              children: <Widget>[
                                Text(
                                  "Connexion ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            )),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 90,
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.monetization_on,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: ListView(
                              children: <Widget>[
                                Text(
                                  "Devenez notre partenaire ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            )),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                  ),

                ],
              ),
            ),
          );
        });
  }
}
