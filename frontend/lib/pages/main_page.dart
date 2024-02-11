import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/pages/home_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainPage extends StatefulWidget {
  static String id = 'main_page';
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _currentIndex = 0;
  List<Widget> _pages = <Widget>[
    HomePage(),
    Container(
      color: Colors.pink,
    ),
    Container(
      color: Colors.orange,
    ),
    Container(
      color: Colors.teal,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            SalomonBottomBarItem(
              icon: Icon(CupertinoIcons.home,),
              title: Text("Home"),
              selectedColor: Theme.of(context).primaryColor,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(CupertinoIcons.heart,),
              title: Text("Likes"),
              selectedColor: Theme.of(context).primaryColor,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.history),
              title: Text("History"),
              selectedColor: Theme.of(context).primaryColor,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(CupertinoIcons.person),
              title: Text("Profile"),
              selectedColor: Theme.of(context).primaryColor,
            ),
          ],
        ),
      ),
      body: _pages[_currentIndex],
    );
  }
}
