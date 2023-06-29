import 'package:flutter/material.dart';
import 'constant.dart';

GestureDetector buildGestureDetector(
    {required void Function() onTap, required String label}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      alignment: Alignment.center,
      color: kBottomContainerColor,
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.only(bottom: 20.0),
      width: double.infinity,
      height: kBottomContainerHeight,
      child: Text(
        label,
        style: kLargeButtonStyle,
      ),
    ),
  );
}
