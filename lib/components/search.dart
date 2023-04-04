// <!-- -----------------------------------------------------------------
// @copyright    (C) 2023 SoAS
// @file         File.jsx
// @author       Daniel Alvarez <josamogax@gmail.com>
// @brief        File description.
// @details
// ------------------------------------------------------------------ -->

import 'package:flutter/material.dart';
import 'package:travel_app/utils/styles.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
          decoration: BoxDecoration(color: accent, borderRadius: BorderRadius.circular(12)),
          height: 50,
          width: 50,
          child: Icon(Icons.swap_horiz, color: white),
        )
      ],
    );
  }
}
