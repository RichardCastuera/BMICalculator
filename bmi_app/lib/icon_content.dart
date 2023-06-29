import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constant.dart';

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
        style: kLabelTextStyle,
      ),
    ],
  );
}
