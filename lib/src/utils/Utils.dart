import 'package:flutter/material.dart';

class Utils {
  static List<Widget> childrenWithSeparator(String mode, {double size, List<Widget> children}) {
    var newWidgets = <Widget>[];
    for(var widget in children) {
      newWidgets.add(widget);
      if (mode == 'row') {
        newWidgets.add(SizedBox(width: size));
      }
      else if (mode == 'column') {
        newWidgets.add(SizedBox(height: size));
      }
    }
    return newWidgets;
  }
}