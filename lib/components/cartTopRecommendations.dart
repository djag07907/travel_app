// <!-- -----------------------------------------------------------------
// @copyright    (C) 2023 SoAS
// @file         File.jsx
// @author       Daniel Alvarez <josamogax@gmail.com>
// @brief        File description.
// @details
// ------------------------------------------------------------------ -->

import 'package:flutter/material.dart';
import 'package:travel_app/utils/styles.dart';

class CardTopRecommendations extends StatelessWidget {
  const CardTopRecommendations(
      {super.key, required this.name, required this.location, required this.image});

  final String name;
  final String location;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.only(right: small),
      width: 220,
      height: 75,
      child: Row(
        children: [
          const SizedBox(
            width: 6,
          ),
          Container(
            decoration: BoxDecoration(
                color: black,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
            height: 60,
            width: 60,
          ),
          SizedBox(
            width: xsmall,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: heading4),
              Text(location, style: p3),
            ],
          ),
        ],
      ),
    );
  }
}
