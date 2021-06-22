import 'package:ecomeraceapp/const/my_icons.dart';
import 'package:ecomeraceapp/screens/cart.dart';
import 'package:ecomeraceapp/screens/feeds.dart';
import 'package:ecomeraceapp/screens/home.dart';
import 'package:ecomeraceapp/screens/search.dart';
import 'package:ecomeraceapp/screens/user.dart';
import 'package:flutter/material.dart';

class BottomBarScreen extends StatefulWidget {
  static const routeName = '/BottomBarScreen';
  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List<Map<String, Object>> _pages;
  int _selectedIndex = 0;

  @override
  void initState() {
    _pages = [
      {'page': HomeScreen(), 'title': 'Home Screen'},
      {'page': FeedScreen(), 'title': 'Cart Screen'},
      {'page': SearchScreen(), 'title': 'Search Screen'},
      {'page': CartScreen(), 'title': 'Feeds Screen'},
      {'page': UserScreen(), 'title': 'User Screen'},
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_pages[_selectedIndex]['title']),
      ),
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomAppBar(
        notchMargin: 2,
        clipBehavior: Clip.antiAlias,
        shape: CircularNotchedRectangle(),
        child: Container(
          decoration: BoxDecoration(
              border: Border(
            top: BorderSide(width: 0.5),
          )),
          child: BottomNavigationBar(
            onTap: _selectPage,
            backgroundColor: Theme.of(context).primaryColor,
            unselectedItemColor: Theme.of(context).textSelectionColor,
            selectedItemColor: Colors.purple,
            currentIndex: _selectedIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(MyAppIcons.home),
                tooltip: 'Home',
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(MyAppIcons.rss),
                tooltip: 'Feeds',
                label: 'Feeds',
              ),
              BottomNavigationBarItem(
                activeIcon: null,
                icon: Icon(null),
                tooltip: 'search',
                label: 'search',
              ),
              BottomNavigationBarItem(
                icon: Icon(MyAppIcons.bag),
                tooltip: 'Cart',
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(MyAppIcons.user),
                tooltip: 'User',
                label: 'User',
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: Colors.purple,
          hoverElevation: 10,
          splashColor: Colors.grey,
          tooltip: 'search',
          elevation: 4,
          child: (Icon(MyAppIcons.search)),
          onPressed: () {
            setState(() {
              _selectedIndex = 2;
            });
          },
        ),
      ),
    );
  }
}
