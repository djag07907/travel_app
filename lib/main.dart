// <!-- -----------------------------------------------------------------
// @copyright    (C) 2023 SoAS
// @file         File.jsx
// @author       Daniel Alvarez <josamogax@gmail.com>
// @brief        File description.
// @details
// ------------------------------------------------------------------ -->

import 'package:flutter/material.dart';
import 'package:travel_app/pages/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
