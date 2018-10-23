import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_client/pages/NewListPage.dart';
import 'package:flutter_client/pages/TweetsListPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new OSSClientState();
  }
}

class OSSClientState extends State<MyApp> {
  int _tabIndex = 0;
  var _body = new IndexedStack(children: <Widget>[
    new NewListPage(),
    new TweetsListPage(),
    // ignore: implicit_this_reference_in_initializer
  ], index: _tabIndex);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primaryColor: Colors.blue),
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text("OSSClient",
                style: new TextStyle(color: Colors.white)),
            iconTheme: new IconThemeData(color: Colors.white),
          ),
          body: new CupertinoTabBar(items: null,currentIndex: _tabIndex,onTap: (index){
            _tabIndex=index;
          },)

    )
    );
  }

  List<BottomNavigationBarItem> getBottomItem(){


  }
}

