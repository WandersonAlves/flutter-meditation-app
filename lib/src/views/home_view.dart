import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_meditation_app/src/components/app_banner.dart';
import 'package:flutter_meditation_app/src/components/app_bottom_navigation.dart';
import 'package:flutter_meditation_app/src/components/app_header.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0),
        color: Color(0xFF0e1e2b),
        child: new Column(
          children: <Widget>[
            AppHeader(),
            AppBanner()
          ],
        ),
      ),
      bottomNavigationBar: new AppBottomNavigation(),
    );
  }
}