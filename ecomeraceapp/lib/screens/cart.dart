import 'package:ecomeraceapp/screens/cart_full.dart';
import 'package:flutter/material.dart';
import 'cart_empty.dart';

class CartScreen extends StatefulWidget {
  static const routeName = '/CartScreen';
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    List products = [];
    return Scaffold(body: products.isEmpty ? CartEmpty() : CartFull());
  }
}
