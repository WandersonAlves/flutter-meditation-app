import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/src/utils/AppColors.dart';

class AppBottomNavigation extends StatelessWidget {

  final bottomBar = BottomNavigationBar(
      backgroundColor: AppColors.primaryColor,
      selectedItemColor: AppColors.accentColor,
      unselectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: AppColors.accentColor),
          title: Text('Home')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_library, color: AppColors.accentColor),
          title: Text('Play Leason')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings, color: AppColors.accentColor),
          title: Text('Configurations')
        ),
      ],
    );

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: AppColors.primaryColor, width: 1.5)
        )
      ),
      child: bottomBar,
    );
  }
}