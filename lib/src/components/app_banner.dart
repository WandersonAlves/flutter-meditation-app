import 'package:flutter/material.dart';

class AppBanner extends StatelessWidget {
  final personIcon = new Container(
    margin: new EdgeInsets.only(right: 10),
    child: Icon(
      Icons.person,
      color: Colors.red[300],
      size: 48,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.only(top: 30),
      child: new Row(
        children: <Widget>[
          personIcon,
          Expanded(
            child: new Text(
              "Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bugs faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }
}
