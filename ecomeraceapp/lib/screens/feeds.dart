import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  static const routeName = '/FeedScreen';

  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: Text('Feeds'),
      ),
    ));
  }
}