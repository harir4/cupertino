import 'package:facebook/Screen/Home.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'cupertino',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
