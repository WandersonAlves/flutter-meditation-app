import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.menu, color: Colors.white),
          new Text(
            "Relax, sit down",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0),
          ),
          Icon(Icons.favorite, color: Colors.white),
        ],
      ),
    );
  }
}
