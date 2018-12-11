import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  final ValueChanged<int> onChanged;

  const BottomNavigationBarWidget({Key key, this.onChanged}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigationBarWidgetState();
  }
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(icon: Icon(Icons.airplay), title: Text('第一页')),
    BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('第二页')),
    BottomNavigationBarItem(icon: Icon(Icons.local_mall), title: Text('第三页')),
  ];

  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      items: _items,
      currentIndex: _selectIndex,
      onTap: _onItemTap,
    );
  }

  void _onItemTap(int index) {
    setState(() {
      _selectIndex = index;
    });
    widget.onChanged(_selectIndex);
  }
}
