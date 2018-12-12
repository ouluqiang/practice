import 'package:flutter/material.dart';
import 'package:practice/widget/AppBarWidget.dart';
import 'package:practice/widget/EditTextFieldWidget.dart';
import 'package:practice/config/CommonConfig.dart';
import 'package:practice/widget/RaisedButtonWidget.dart';

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

class LoginBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginBodyState();
  }
}

class LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(0, 50, 0, 20),
          child: Image.asset('assets/icon/ic_head.png'),
        ),
        EditTextFieldWidget(
          '请输入用户名',
          imageAsset: 'assets/icon/ic_phone.png',
        ),
        EditTextFieldWidget(
          '请输入密码',
          imageAsset: 'assets/icon/ic_password.png',
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Row(
            children: <Widget>[
              Text(
                '注册',
                style: CommonConfig.getTextStyle(context,
                    color: CommonConfig.getAccentColor(context), size: 14),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '忘记密码？',
                    style: CommonConfig.getTextStyle(context,
                        color: CommonConfig.getAccentColor(context),
                        size: 14,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 30),
            child: RaisedButtonWidget('登录')),
      ],
    );
  }
}
