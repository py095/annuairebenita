
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import '../ProfilsPage.dart';
import 'Login.dart';


class WelcomeWidget extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() => _WelcomeWidgetState();
}


class _WelcomeWidgetState extends State<WelcomeWidget> with SingleTickerProviderStateMixin {
  AnimationController animationControllerElementOne;
  
  @override
  void initState() {
  
    super.initState();
    this.animationControllerElementOne = AnimationController(duration: Duration(milliseconds: 1000), vsync: this);
    this.startAnimationOne();
  }
  
  @override
  void dispose() {
  
    super.dispose();
    this.animationControllerElementOne.dispose();
  }
  

  
  void onLogInPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWidget()));
  
  void startAnimationOne() => this.animationControllerElementOne.forward();
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.31, 1.1),
            end: Alignment(0.69, -0.1),
            stops: [
              0,
              1,
            ],
            colors: [
              Color.fromRGBO(16, 179, 253,1),
              Color.fromARGB(255, 140, 28, 140),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 120,
                height: 120,
                margin: EdgeInsets.only(top: 100),
                child: logoImage(
                  animationControllerElementOne: this.animationControllerElementOne,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 60),
                child: Text(
                  "Annuaire",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 42,
                    letterSpacing: -1,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Les nouveaux modèles économiques, l’accélération des changements, "
                      "le pouvoir des internautes sur les réseaux sociaux, etc."
                      " sont des facteurs à intégrer dans la stratégie des organisations."
                      " Ainsi il est possible de mieux performer que ses concurrents et"
                      " mieux satisfaire ses clients (ou étudiants, administrés, etc. selon les cas),"
                      " améliorer son efficacité opérationnelle, développer son chiffre d’affaires, "
                      "accroître sa visibilité et sa notoriété, recruter et fidéliser, innover.",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 18,
                    fontFamily: "Lato",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Spacer(),
            Container(
              height: 60,
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 85),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 148,
                    height: 60,
                    child: FlatButton.icon(
                      icon: Image.asset("assets/images/icon-sign-up.png",),
                      label: Text(
                        "INSCRIPTION",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Lato",
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () => this.onLogInPressed(context),
                      color: Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
                      textColor: Color.fromARGB(255, 217, 104, 111),
                      padding: EdgeInsets.all(0),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 148,
                    height: 60,
                    child: FlatButton.icon(
                      icon: Image.asset("assets/images/icon-log-in.png",),
                      label: Text(
                        "CONNEXION",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Lato",
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () => this.onLogInPressed(context),
                      color: Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
                      textColor: Color.fromARGB(255, 219, 104, 110),
                      padding: EdgeInsets.all(0),
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

  logoImage({AnimationController animationControllerElementOne}) {}
}