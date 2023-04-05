// <!-- -----------------------------------------------------------------
// @copyright    (C) 2023 SoAS
// @file         File.jsx
// @author       Daniel Alvarez <josamogax@gmail.com>
// @brief        File description.
// @details
// ------------------------------------------------------------------ -->

import 'package:flutter/material.dart';
import 'package:travel_app/components/cardDestinationsExplore.dart';
import 'package:travel_app/models/destination.dart';

class ExploreDestinations extends StatefulWidget {
  const ExploreDestinations({super.key});

  @override
  State<ExploreDestinations> createState() => _ExploreDestinationsState();
}

class _ExploreDestinationsState extends State<ExploreDestinations> {
  List<Destination> destinations = [
    Destination('assets/images/osaka_castle.jpg', 'Osaka Castle', '120', 'Ohsaka - JP'),
    Destination('assets/images/matsumoto_castle.jpg', 'Matsumoto Castle', '120', 'Nagano - JP'),
    Destination(
        'assets/images/toriigate_laketzakawa.jpg', 'Torii Gate', '120', 'Lake Tzakawa - JP'),
    Destination(
        'assets/images/itsukushima_shrine.jpg', 'Itsukushima Shrine', '120', 'Itsukushima - JP'),
    Destination('assets/images/osaka_castle.jpg', 'Osaka Castle', '120', 'Ohsaka - JP'),
    Destination('assets/images/matsumoto_castle.jpg', 'Matsumoto Castle', '120', 'Nagano - JP'),
    Destination(
        'assets/images/toriigate_laketzakawa.jpg', 'Torii Gate', '120', 'Lake Tzakawa - JP'),
    Destination(
        'assets/images/itsukushima_shrine.jpg', 'Itsukushima Shrine', '120', 'Itsukushima - JP'),
    Destination('assets/images/osaka_castle.jpg', 'Osaka Castle', '120', 'Ohsaka - JP'),
    Destination('assets/images/matsumoto_castle.jpg', 'Matsumoto Castle', '120', 'Nagano - JP'),
    Destination(
        'assets/images/toriigate_laketzakawa.jpg', 'Torii Gate', '120', 'Lake Tzakawa - JP'),
    Destination(
        'assets/images/itsukushima_shrine.jpg', 'Itsukushima Shrine', '120', 'Itsukushima - JP'),
    Destination('assets/images/osaka_castle.jpg', 'Osaka Castle', '120', 'Ohsaka - JP'),
    Destination('assets/images/matsumoto_castle.jpg', 'Matsumoto Castle', '120', 'Nagano - JP'),
    Destination(
        'assets/images/toriigate_laketzakawa.jpg', 'Torii Gate', '120', 'Lake Tzakawa - JP'),
    Destination(
        'assets/images/itsukushima_shrine.jpg', 'Itsukushima Shrine', '120', 'Itsukushima - JP'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: destinations.length,
        itemBuilder: (context, index) {
          var dest = destinations[index];
          return CardDestinationsExplore(
              image: dest.image, name: dest.name, price: dest.price, location: dest.location);
        },
      ),
    );
  }
}
