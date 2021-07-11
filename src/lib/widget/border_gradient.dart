import 'package:flutter/material.dart';

final kInnerDecoration = BoxDecoration(
  color: Colors.white,
  border: Border.all(color: Colors.white),
  borderRadius: BorderRadius.circular(13),
);
// border for all 3 colors
final kGradientBoxDecoration = BoxDecoration(
  gradient: LinearGradient(
      colors: [Colors.amber, Colors.pink,]),
  border: Border.all(
    color: Colors.amber, //kHintColor, so this should be changed?
  ),
  borderRadius: BorderRadius.circular(15),
);