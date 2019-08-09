import 'package:flutter/material.dart';

class AppBottomNavigation extends StatelessWidget {

  final bottomBar = BottomNavigationBar(
      backgroundColor: Color(0xFF0e1e2b),
      selectedItemColor: Colors.red[300],
      unselectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.red[300]),
          title: Text('Home')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_library, color: Colors.red[300]),
          title: Text('Play Leason')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings, color: Colors.red[300]),
          title: Text('Configurations')
        ),
      ],
    );

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Color(0xFF0e1e2b), width: 1.0)
        )
      ),
      child: bottomBar,
    );
  }
}