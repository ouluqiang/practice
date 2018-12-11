import 'package:flutter/material.dart';

class NavigatorConfig {
  //跳转
  static getNavigatorPush(BuildContext context, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return widget;
    }));
  }

  //返回
  static getNavigatorPop(BuildContext context) {
    Navigator.pop(context);
  }
}
