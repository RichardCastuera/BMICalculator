import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Column iconData(IconData gender, String label) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      FaIcon(
        gender,
        size: 50.0,
      ),
      SizedBox(
        height: 10.0,
      ),
      Text(
        label,
        style: TextStyle(
          fontSize: 18.0,
          color: Color(0xFF8D8E98),
        ),
      ),
    ],
  );
}
