import 'package:flutter/material.dart';

class CommonConfig {
  static ThemeData getThemeDate(BuildContext context) {
    return Theme.of(context);
  }

  static Color getAccentColor(BuildContext context) {
    return getThemeDate(context).accentColor;
  }

//  static TextStyle getTextStyle(BuildContext context, {Color color, int size}) {
//    return getTextStyle(context, color: getAccentColor(context), size: 18);
//  }

  static TextStyle getTextStyle(BuildContext context,
      {Color color = Colors.white,
      double size = 18,
      TextDecoration decoration = TextDecoration.none}) {
//    color == null ? getAccentColor(context) : color;
//    size == null ? 18 : size;
    return getThemeDate(context)
        .textTheme
        .caption
        .copyWith(color: color, fontSize: size, decoration: decoration);
  }
}
