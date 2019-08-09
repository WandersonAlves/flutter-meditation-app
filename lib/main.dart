import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_meditation_app/src/views/home_view.dart';

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
      home: HomeView(),
    );
  }
}

