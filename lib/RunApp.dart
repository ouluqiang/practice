import 'package:flutter/material.dart';
import 'package:practice/ui/home/Main.dart';
import 'package:practice/config/CommonConfig.dart';

void main() => runApp(RunApp());

class RunApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '测试',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(
        title: '开始',
      ),
    );
  }
}
