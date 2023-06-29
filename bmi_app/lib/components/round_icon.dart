import 'package:flutter/material.dart';

RawMaterialButton RoundIconButton(
    {required IconData icon, required void Function() onPress}) {
  return RawMaterialButton(
    onPressed: onPress,
    elevation: 6.0,
    constraints: BoxConstraints.tightFor(
      width: 56.0,
      height: 56.0,
    ),
    shape: CircleBorder(),
    fillColor: Color(0xFF4C4F5E),
    child: Icon(icon),
  );
}
