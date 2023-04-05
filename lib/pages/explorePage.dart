// <!-- -----------------------------------------------------------------
// @copyright    (C) 2023 SoAS
// @file         File.jsx
// @author       Daniel Alvarez <josamogax@gmail.com>
// @brief        File description.
// @details
// ------------------------------------------------------------------ -->

import 'package:flutter/material.dart';
import 'package:travel_app/components/destinations.dart';
import 'package:travel_app/components/search.dart';
import 'package:travel_app/models/destination.dart';
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
            padding: EdgeInsets.only(
              left: medium,
              top: 50,
              right: medium,
            ),
            // child: Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'Search a destination',
                        style: heading1,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: small,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        cursorColor: accent,
                        style: p1,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, size: 32, color: text),
                          hintText: 'Search destination',
                          hintStyle: p1,
                          fillColor: white,
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(vertical: small),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: small,
                    ),
                    Container(
                      decoration:
                          BoxDecoration(color: accent, borderRadius: BorderRadius.circular(12)),
                      height: 50,
                      width: 50,
                      child: Icon(Icons.swap_horiz, color: white),
                    )
                  ],
                ),
                SizedBox(
                  height: small,
                ),
                Column(
                  children: const [ExploreDestinations()],
                ),
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
