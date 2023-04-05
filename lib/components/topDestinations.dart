// <!-- -----------------------------------------------------------------
// @copyright    (C) 2023 SoAS
// @file         File.jsx
// @author       Daniel Alvarez <josamogax@gmail.com>
// @brief        File description.
// @details
// ------------------------------------------------------------------ -->

import 'package:flutter/material.dart';
import 'package:travel_app/components/cartTopRecommendations.dart';
import 'package:travel_app/models/destination.dart';

class TopDestinations extends StatelessWidget {
  const TopDestinations({super.key});

  @override
  Widget build(BuildContext context) {
    List<Destination> destinations = [
      Destination('assets/images/palace.jpg', 'Osaka Castle', '120', 'Ohsaka - JP'),
      Destination('assets/images/temple.jpg', 'Matsumoto Castle', '120', 'Nagano - JP'),
      Destination('assets/images/arcs.jpg', 'Torii Gate', '120', 'Lake Tzakawa - JP'),
      Destination('assets/images/arc.jpg', 'Itsukushima Shrine', '120', 'Itsukushima - JP'),
    ];
    return SizedBox(
      height: 75,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: destinations.length,
        itemBuilder: (context, index) {
          var dest = destinations[index];
          return CardTopRecommendations(
              name: dest.name, location: dest.location, image: dest.image);
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
