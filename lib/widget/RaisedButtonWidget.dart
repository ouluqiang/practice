import 'package:flutter/material.dart';
import 'package:practice/config/CommonConfig.dart';

class RaisedButtonWidget extends StatefulWidget {
  final String data;

  RaisedButtonWidget(this.data, {Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RaisedButtonWidgetState();
  }
}

class RaisedButtonWidgetState extends State<RaisedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      padding: EdgeInsets.fromLTRB(0, 14, 0, 14),
      onPressed: () {},
      color: CommonConfig.getAccentColor(context),
      child: Text(
        widget.data,
        style: CommonConfig.getTextStyle(context),
      ),
    );
  }
}
