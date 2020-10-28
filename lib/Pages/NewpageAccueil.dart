import 'package:flutter/material.dart';

class NewpageAccueil extends StatefulWidget {
  @override
  _NewpageAccueilState createState() => _NewpageAccueilState();
}

class _NewpageAccueilState extends State<NewpageAccueil> {
  @override
  Widget build(BuildContext context) {
    return Container(width: 100, height: 250, child: _buildListView());

  }

  Widget _buildListView() {
    return ListView.builder(
      padding: const EdgeInsets.all(6.0),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return _buildImageColum([index]);
        // ListTile(title: Text("data"), subtitle: Text("comenade"),);
      },
    );
  }

  Widget _buildImageColum(index){
    return InkWell(
      onTap: () {

      },
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 150.0,
              child: Card(
                child: Wrap(
                  children: <Widget>[
                    Image(image: ExactAssetImage("images/acta.jpg"),
                  fit: BoxFit.fill),
                    ListTile(
                      title: Text(
                        "Nom",
                        style: TextStyle(
                          fontSize: 9.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      subtitle: Text(
                        "Texte View",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
