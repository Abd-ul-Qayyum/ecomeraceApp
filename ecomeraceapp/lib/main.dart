import 'package:ecomeraceapp/bottom_bar.dart';
import 'package:ecomeraceapp/screens/cart.dart';
import 'package:ecomeraceapp/screens/feeds.dart';
import 'package:ecomeraceapp/screens/home.dart';
import 'package:ecomeraceapp/screens/search.dart';
import 'package:ecomeraceapp/screens/user.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomBarScreen(),
      // initialRoute: HomeScreen.routeName,
      // routes: {
      //   HomeScreen.routeName: (context) => HomeScreen(),
      //   CartScreen.routeName: (context) => CartScreen(),
      //   FeedScreen.routeName: (context) => FeedScreen(),
      //   SearchScreen.routeName: (context) => SearchScreen(),
      //   UserScreen.routeName: (context) => UserScreen(),
      // },
    );
  }
}
