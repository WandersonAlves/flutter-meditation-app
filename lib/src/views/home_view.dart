import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_meditation_app/src/components/app_banner.dart';
import 'package:flutter_meditation_app/src/components/app_bottom_navigation.dart';
import 'package:flutter_meditation_app/src/components/app_header.dart';
import 'package:flutter_meditation_app/src/components/app_image.dart';
import 'package:flutter_meditation_app/src/data/recommendedLeason.dart';
import 'package:flutter_meditation_app/src/utils/utils.dart';

class HomeView extends StatelessWidget {
  static final recommendedLeasons = [
    RecommendedLeason(
        title: 'Leasons of the nature',
        duration: '03:02',
        leasonPhotoURL:
            'https://img.etimg.com/thumb/height-450,width-800,msid-68721417,imgsize-1016106/nature1_gettyimages.jpg'),
    RecommendedLeason(
        title: "There's no end in happiness",
        duration: '03:02',
        leasonPhotoURL:
            'https://www.canva.com/learn/wp-content/uploads/2019/02/You-Win-You-Learn-Motivational-Poster.jpg'),
    RecommendedLeason(
        title: "Be kind",
        duration: '03:02',
        leasonPhotoURL:
            'https://img00.deviantart.net/306c/i/2015/122/1/c/natural_night__by_odinnemesis_nature-d2mx5na.jpg'),
  ];

  final images = Utils.childrenWithSeparator('row',
      size: 20.0,
      children: recommendedLeasons
          .map((leason) => AppImage(
                leason.leasonPhotoURL,
                cardTitle: leason.title,
                cardSubtitle: leason.duration,
              ))
          .toList());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0),
        color: Color(0xFF0e1e2b),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AppHeader(),
            AppBanner(),
            SizedBox(height: 20),
            Container(
              height: 200,
              child:
                  ListView(children: images, scrollDirection: Axis.horizontal),
            )
          ],
        ),
      ),
      bottomNavigationBar: new AppBottomNavigation(),
    );
  }
}
