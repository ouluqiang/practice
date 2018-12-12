import 'package:flutter/material.dart';

class EditTextFieldWidget extends StatefulWidget {
  final String hint;
  final String imageAsset;

  EditTextFieldWidget(this.hint, {this.imageAsset, Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return EditTextFieldWidgetState();
  }
}

class EditTextFieldWidgetState extends State<EditTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
//            Text("用户名"),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Image.asset(
            widget.imageAsset,
            height: 30,
            width: 30,
          ),
        ),
        TextFieldWidget(widget.hint),
      ],
    );
  }
}

class TextFieldWidget extends StatefulWidget {
  final String hint;

  TextFieldWidget(this.hint, {Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TextFieldWidgetState();
  }
}

class TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: TextField(
//                controller: _controller,
          decoration: InputDecoration(
            hintText: widget.hint,
            labelText: widget.hint,
          ),
          maxLength: 11,
          maxLines: 1,
        ),
      ),
    );
  }
}
