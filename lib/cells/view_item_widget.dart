
import 'package:flutter/material.dart';
class ViewItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 123,
      height: 152,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 123,
            height: 142,
            child: Image.asset(
              "images/acta.jpg",
              fit: BoxFit.none,
            ),
          ),
          SizedBox(height: 10,),
          Container(
            width: 20,
            height: 20,
            child:Text("Hotels"),
          )
        ],
      ),
    );
  }
}