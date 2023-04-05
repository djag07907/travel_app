// <!-- -----------------------------------------------------------------
// @copyright    (C) 2023 SoAS
// @file         File.jsx
// @author       Daniel Alvarez <josamogax@gmail.com>
// @brief        File description.
// @details
// ------------------------------------------------------------------ -->

import 'package:flutter/material.dart';
import 'package:travel_app/pages/explorePage.dart';
import 'package:travel_app/pages/favoritesPage.dart';
import 'package:travel_app/pages/homePage.dart';
import 'package:travel_app/utils/styles.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // int _selectedIndex = 3;

  int _currentIndex = 3;

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
                Text('This is the profile page'),
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
