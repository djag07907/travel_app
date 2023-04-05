// <!-- -----------------------------------------------------------------
// @copyright    (C) 2023 SoAS
// @file         File.jsx
// @author       Daniel Alvarez <josamogax@gmail.com>
// @brief        File description.
// @details
// ------------------------------------------------------------------ -->

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
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

  File? _imageFile;

  void _chooseImage() async {
    final pickedFile = await ImagePicker().getImage(source: ImageSource.gallery);
    setState(() {
      _imageFile = pickedFile != null ? File(pickedFile.path) : null;
    });
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
                Row(
                  children: [
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: GestureDetector(
                        onTap: _chooseImage,
                        child: CircleAvatar(
                          radius: 80.0,
                          backgroundImage: _imageFile != null
                              ? FileImage(_imageFile!)
                              : const AssetImage('assets/images/user.png') as ImageProvider,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: small,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Daniel Alvarez',
                          style: heading1,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: medium),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text('My Information', style: heading1),
                    ),
                    SizedBox(
                      width: small,
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.edit,
                            color: icon,
                            size: 28,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: medium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Username: ',
                          style: heading3,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: medium,
                    ),
                    Column(
                      children: [
                        Text('Daniel Alvarez', style: p1),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: small,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text('Email: ', style: heading3),
                      ],
                    ),
                    SizedBox(
                      width: medium,
                    ),
                    Column(
                      children: [
                        Text('josamogax@gmail.com', style: p1),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: small,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text('Bio: ', style: heading3),
                      ],
                    ),
                    SizedBox(
                      width: medium,
                    ),
                    Column(
                      children: [
                        Text('I am a Software Developer!', style: p1),
                      ],
                    ),
                  ],
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
