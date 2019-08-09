import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              customBorder: CircleBorder(),
              splashColor: Colors.white.withOpacity(0.25),
              child: Icon(Icons.menu, color: Colors.white),
            ),
          ),
          Text(
            "Medi",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              customBorder: CircleBorder(),
              splashColor: Colors.red.withOpacity(0.75),
              child: Icon(Icons.favorite, color: Colors.white),
            )
          )
        ],
      ),
    );
  }
}
