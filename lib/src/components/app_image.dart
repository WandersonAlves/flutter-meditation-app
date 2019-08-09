import 'package:flutter/material.dart';

class AppImage extends StatelessWidget {
  final String url;
  final String cardTitle;
  final String cardSubtitle;

  AppImage(this.url, {this.cardTitle = '', this.cardSubtitle = ''});

  final _networkImage = (String url) => new Container(
        width: 128,
        height: 128,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white54,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            image:
                DecorationImage(image: NetworkImage(url), fit: BoxFit.cover)),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128,
      height: 128,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _networkImage(this.url),
          SizedBox(height: 10),
          Flexible(
            child: Text(this.cardTitle,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
              textAlign: TextAlign.left
            ),
          ),
          SizedBox(height: 5),
          Text(this.cardSubtitle,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[400],
                  fontSize: 12),
              textAlign: TextAlign.left)
        ],
      ),
    );
  }
}
