import 'package:flutter/material.dart';

GestureDetector reusableCard({
  required Color color,
  required Widget cardChild,
  required void Function() onPress,
}) {
  return GestureDetector(
    onTap: onPress,
    child: Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    ),
  );
}
