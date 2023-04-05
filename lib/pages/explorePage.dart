// <!-- -----------------------------------------------------------------
// @copyright    (C) 2023 SoAS
// @file         File.jsx
// @author       Daniel Alvarez <josamogax@gmail.com>
// @brief        File description.
// @details
// ------------------------------------------------------------------ -->

import 'package:flutter/material.dart';
import 'package:travel_app/pages/homePage.dart';
import 'package:travel_app/pages/favoritesPage.dart';
import 'package:travel_app/pages/profilePage.dart';
import 'package:travel_app/utils/styles.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  // int _selectedIndex = 1;

  int _currentIndex = 1;

  final List<Widget> _children = [
    const HomePage(),
    const ExplorePage(),
    const FavoritesPage(),
    const ProfilePage(),
  ];

  void onTabTapped(int index) {
    // setState(() {
    //   _currentIndex = index;
    // });
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return _children[index];
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(left: medium, top: 50, right: medium),
            // child: Expanded(
            child: Column(
              children: [
                Text('This is the explore page'),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedItemColor: accent,
          unselectedItemColor: icon,
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          backgroundColor: white,
          iconSize: 35,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.explore,
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
              ),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
