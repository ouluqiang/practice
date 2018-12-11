import 'package:flutter/material.dart';
import 'package:practice/config/NavigatorConfig.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  final String _title;
  final Icon icon;
  final ValueChanged onChanged;

  AppBarWidget(this._title, {Key key, this.icon, this.onChanged})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AppBarWidgetState();
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      title: Text(widget._title),
      centerTitle: true,
//      leading: IconButton(
//          icon: widget.icon,
//          onPressed: () {
//            NavigatorConfig.getNavigatorPop(context);
//          }),
      leading: GestureDetector(
        child: widget.icon == null ? Icon(Icons.arrow_back_ios) : widget.icon,
        onTap: () {
          if (widget.icon != null) {
            widget.onChanged(0);
          } else {
            NavigatorConfig.getNavigatorPop(context);
          }
        },
      ),
    );
  }
}
