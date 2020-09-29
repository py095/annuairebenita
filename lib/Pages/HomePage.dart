
import 'package:flutter/material.dart';

import '../RecherchePage.dart';
import 'AccueilPage.dart';
import 'NewsPage.dart';
import 'ProfilsPage.dart';

void main() {
  runApp(new HomePage());
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();

  List<Widget> _screens = [NewsPages(), RecherchePage(), ProfilPage()];

  int _current = 0;
  Widget callPage(int current){
    switch(current){
      case 0: return AccueilPage();
      case 1: return  NewsPages();
      case 2: return RecherchePage();
      case 3: return ProfilPage();
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
      body: callPage(  _current
//        controller: _pageController,
//        children: <Widget>[image_carousel],
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
    );
  }
}
