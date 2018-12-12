import 'package:flutter/material.dart';
import 'package:practice/widget/AppBarWidget.dart';
import 'package:practice/widget/BottomNavigationBarWidget.dart';
import 'package:practice/config/NavigatorConfig.dart';
import 'package:practice/ui/login/Login.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  int _selectIndex = 0;

  void _select(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBarWidget(
        widget.title,
        icon: Icon(Icons.dehaze),
        onChanged: (i) {
          _scaffoldKey.currentState.openDrawer();
        },
      ),
//      appBar: new AppBar(
//        title: new Text(widget.title),
//        centerTitle: true,
//      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
//                child: Center(
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      NavigatorConfig.getNavigatorPush(context, Login());
                    },
                    child: CircleAvatar(
                      radius: 40,
                      child: Image.asset(
                        'assets/icon/ic_head.png',
                        width: 150,
                        height: 150,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text('标题'),
                  )
                ],
              ),
//            )
            ),
            ListTile(
              title: Text('a'),
              leading: Icon(Icons.list),
            ),
            Divider(),
            ListTile(
              title: Text('a'),
              leading: Icon(Icons.list),
            ),
            Divider(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        onChanged: _select,
      ),
      body: IndexedStack(
        index: _selectIndex,
        children: <Widget>[
          Text("a"),
          Center(
            child: Text("b"),
          ),
          Text("c")
        ],
      ),
//      body: Center(
//        // Center is a layout widget. It takes a single child and positions it
//        // in the middle of the parent.
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
////            Text(
//////              '$_counter',
////              style: Theme.of(context).textTheme.display1,
////            ),
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
