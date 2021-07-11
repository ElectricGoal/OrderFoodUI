import 'package:flutter/material.dart';
import 'package:foodorder/screen/home_screen_components.dart';

// ignore: must_be_immutable
class LargeHomeScreen extends StatelessWidget {
  LargeHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Row(
        children: [
          Flexible(
            flex: 2,
            child: LeftHomeScreen(),
          ),
          VerticalDivider(
            color: Colors.grey,
            thickness: 0.5,
            indent: 0,
            endIndent: 0,
            width: 5,
          ),
          Flexible(
            flex: 1,
            child: RightHomeScreen(),
          )
        ],
      ),
    );
  }
}
