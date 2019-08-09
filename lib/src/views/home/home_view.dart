import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_meditation_app/src/components/app_banner.dart';
import 'package:flutter_meditation_app/src/components/app_bottom_navigation.dart';
import 'package:flutter_meditation_app/src/components/app_header.dart';
import 'package:flutter_meditation_app/src/components/app_image.dart';
import 'package:flutter_meditation_app/src/data/recommendedLeason.dart';
import 'package:flutter_meditation_app/src/utils/utils.dart';

class HomeView extends StatelessWidget {

  List<Widget> getCards (List<RecommendedLeason> recommendedLeasons) {
    return Utils.childrenWithSeparator('row',
      size: 20.0,
      children: recommendedLeasons
          .map((leason) => AppImage(
                leason.leasonPhotoURL,
                cardTitle: leason.title,
                cardSubtitle: leason.duration,
              ))
          .toList());
  }

  List<RecommendedLeason> parseJSON(String res) {
    if (res == null) {
      return [];
    }
    final parsed = json.decode(res.toString()).cast<Map<String, dynamic>>();
    return parsed.map<RecommendedLeason>((json) => RecommendedLeason.fromJSON(json)).toList();
  }

  @override
  Widget build(BuildContext context) {
    final recommendedLeasons = FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString('assets/json/recommendedLeasons.json'),
      builder: (context, snapshot) {
        List<RecommendedLeason> leasons = parseJSON(snapshot.data.toString());
        return leasons.isNotEmpty ? ListView(children: getCards(leasons), scrollDirection: Axis.horizontal) : SizedBox();
      },
    );
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
              height: 175,
              child: recommendedLeasons
            )
          ],
        ),
      ),
      bottomNavigationBar: new AppBottomNavigation(),
    );
  }
}
