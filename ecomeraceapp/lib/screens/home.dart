import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/HomeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
      child: Text('Home'),
    ),
        ));
  }
}
