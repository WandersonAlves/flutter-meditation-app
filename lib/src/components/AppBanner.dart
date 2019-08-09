import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/src/utils/AppColors.dart';

class AppBanner extends StatelessWidget {
  final personIcon = new Container(
    margin: EdgeInsets.only(right: 10),
    child: Icon(
      Icons.person,
      color: AppColors.accentColor,
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
              "Sometimes we’re tested not to show our weaknesses, but to discover our strengths.",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }
}
