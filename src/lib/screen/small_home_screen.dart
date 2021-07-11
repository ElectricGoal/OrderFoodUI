import 'package:flutter/material.dart';
import 'package:foodorder/screen/home_screen_components.dart';

// ignore: must_be_immutable
class SmallHomeScreen extends StatelessWidget {
  SmallHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: LeftHomeScreen(),
    );
  }
}
