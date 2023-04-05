// <!-- -----------------------------------------------------------------
// @copyright    (C) 2023 SoAS
// @file         File.jsx
// @author       Daniel Alvarez <josamogax@gmail.com>
// @brief        File description.
// @details
// ------------------------------------------------------------------ -->

import 'package:flutter/material.dart';
import 'package:travel_app/utils/styles.dart';

class CardDestinationsExplore extends StatelessWidget {
  const CardDestinationsExplore(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
      required this.location});

  final String image;
  final String name;
  final String price;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: small),
      decoration: BoxDecoration(
          color: black,
          borderRadius: BorderRadius.circular(26),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      height: 200,
      width: 200,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          gradient: const LinearGradient(
            colors: [Color.fromRGBO(0, 0, 0, 0.75), Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: small, bottom: small),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        // color: accentLight,
                        // gradient: const LinearGradient(
                        color: const Color.fromRGBO(24, 165, 253, 0.75),

                        // ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          '\$$price',
                          style: pPrice,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: pBold),
                  Text(location, style: pLocation),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
