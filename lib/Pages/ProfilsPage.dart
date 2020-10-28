
import 'package:annuairebenita/Pages/LoginLo/profile_settings_widget.dart';
import 'package:annuairebenita/cells/view_item_widget.dart';
import 'package:flutter/material.dart';


class ProfileWidget extends StatelessWidget {

  void onLeftItemPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileSettingsWidget()));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mon profils",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 17,
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          FlatButton(
            onPressed: () => this.onLeftItemPressed(context),
            textColor: Color.fromARGB(255, 255, 255, 255),
            child: Text(
              "Settings",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: "",
              ),
              textAlign: TextAlign.left,
            ),
          ),
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
            Container(
              height: 297,
              margin: EdgeInsets.only(top: 64),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Column(
                children: [
                  Container(
                    width: 124,
                    height: 124,
                    margin: EdgeInsets.only(top: 25),
                    child: Image.asset(
                      "assets/images/avatar-temp.png",
                      fit: BoxFit.none,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 11),
                    child: Text(
                      "Hotel. Wani",
                      style: TextStyle(
                        color: Color.fromARGB(255, 5, 12, 22),
                        fontSize: 26,
                        fontFamily: "Lato",
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Opacity(
                      opacity: 0.4,
                      child: Text(
                        "1 Phone Booth, Andromeda",
                        style: TextStyle(
                          color: Color.fromARGB(255, 5, 12, 22),
                          fontSize: 12,
                          fontFamily: "Lato",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(bottom: 27),
                    child: Text(
                      "Traveler, dreamer, showman. Occasionally gets into fight, not always survives.",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 14,
                        fontFamily: "Lato",
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 84,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 251, 251, 251),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 42,
                    right: 41,
                    child: Container(
                      height: 44,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 42,
                              height: 44,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    "365",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 248, 132, 98),
                                      fontSize: 24,
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Spacer(),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 2),
                                    child: Opacity(
                                      opacity: 0.4,
                                      child: Text(
                                        "Photos",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 12,
                                          fontFamily: "Lato",
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 43,
                              height: 44,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 1),
                                    child: Text(
                                      "326",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 140, 28, 140),
                                        fontSize: 24,
                                        fontFamily: "Lato",
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Spacer(),
                                  Opacity(
                                    opacity: 0.4,
                                    child: Text(
                                      "Stalking",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 12,
                                        fontFamily: "Lato",
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      width: 43,
                      height: 44,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 1),
                            child: Text(
                              "58k",
                              style: TextStyle(
                                color: Color.fromARGB(255, 217, 104, 111),
                                fontSize: 24,
                                fontFamily: "Lato",
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Spacer(),
                          Opacity(
                            opacity: 0.4,
                            child: Text(
                              "Stalkers",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 12,
                                fontFamily: "Lato",
                              ),
                              textAlign: TextAlign.center,
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