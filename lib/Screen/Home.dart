import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
            backgroundColor: Colors.blue,
            middle: Text('Home'),
            leading: Icon(Icons.navigate_before),
            trailing: Icon(Icons.search)),
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.call), title: Text('Call')),
            BottomNavigationBarItem(icon: Icon(Icons.message)),
          ]),
          tabBuilder: (context, int i) {
            return Center(
                child: i == 0 ? Icon(Icons.phone) : Icon(Icons.message));
          },
        ));
  }
}
