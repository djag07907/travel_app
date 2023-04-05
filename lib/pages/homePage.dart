// <!-- -----------------------------------------------------------------
// @copyright    (C) 2023 SoAS
// @file         File.jsx
// @author       Daniel Alvarez <josamogax@gmail.com>
// @brief        File description.
// @details
// ------------------------------------------------------------------ -->

import 'package:flutter/material.dart';
import 'package:travel_app/components/heading.dart';
import 'package:travel_app/components/labelSection.dart';
import 'package:travel_app/components/recommended.dart';
import 'package:travel_app/components/search.dart';
import 'package:travel_app/components/topDestinations.dart';
import 'package:travel_app/utils/styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: medium, top: 50, right: medium),
            // child: Expanded(
            child: Column(
              children: [
                const HeadingSection(),
                SizedBox(
                  height: small,
                ),
                const SearchSection(),
                SizedBox(
                  height: medium,
                ),
                LabelSection(
                  labelText: 'Recommended',
                  style: heading1,
                ),
                SizedBox(
                  height: small,
                ),
                const Recommended(),
                SizedBox(
                  height: medium,
                ),
                LabelSection(labelText: 'Top Destinations', style: heading2),
                SizedBox(
                  height: small,
                ),
                const TopDestinations(),
              ],
            ),
            // ),
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
          backgroundColor: white,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.explore,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
