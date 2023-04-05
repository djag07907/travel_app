// <!-- -----------------------------------------------------------------
// @copyright    (C) 2023 SoAS
// @file         File.jsx
// @author       Daniel Alvarez <josamogax@gmail.com>
// @brief        File description.
// @details
// ------------------------------------------------------------------ -->

import 'package:flutter/material.dart';
import 'package:travel_app/utils/styles.dart';

class LabelSection extends StatelessWidget {
  const LabelSection({super.key, required this.labelText, required this.style});

  final String labelText;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          labelText,
          style: heading1,
        ),
        Icon(
          Icons.more_horiz,
          color: icon,
        )
      ],
    );
  }
}
