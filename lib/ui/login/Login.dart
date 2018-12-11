import 'package:flutter/material.dart';
import 'package:practice/widget/AppBarWidget.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBarWidget(
        '登录',
      ),
      body: LoginBody(),
    );
  }
}

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset('assets/ic_head.png'),
          Row(
            children: <Widget>[
              Text("用户名"),
//              TextField()
            ],
          ),
        ],
      ),
    );
  }
}
