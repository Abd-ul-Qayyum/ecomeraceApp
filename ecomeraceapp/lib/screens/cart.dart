import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  static const routeName = '/CartScreen';
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
      child: Text('Cart'),
    ),
        ));
  }
}