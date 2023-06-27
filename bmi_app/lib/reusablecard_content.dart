import 'package:flutter/material.dart';

Container reusableCard(Color color, Widget cardChild) {
  return Container(
    margin: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: cardChild,
  );
}
