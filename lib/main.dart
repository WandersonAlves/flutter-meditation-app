import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_meditation_app/src/components/AppBottomNavigation.dart';
import 'package:flutter_meditation_app/src/components/AppHeader.dart';
import 'package:flutter_meditation_app/src/utils/AppColors.dart';
import 'package:flutter_meditation_app/src/views/home/HomeView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent, //or set color with: Color(0xFF0000FF)
    ));

    return new MaterialApp(
      title: 'Medi',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Open Sans',
          bodyColor: Colors.white,
          displayColor: Colors.white,
        )
      ),
      home: Scaffold(
        body: Container(
          color: AppColors.primaryColor,
          padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppHeader(),
              HomeView()
            ],
          )
        ),
        bottomNavigationBar: AppBottomNavigation(),
      ),
    );
  }
}

