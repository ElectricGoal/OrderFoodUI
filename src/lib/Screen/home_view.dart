import 'package:flutter/material.dart';
import 'package:foodorder/Screen/large_home_screen.dart';
import 'package:foodorder/Screen/small_home_screen.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constrains) {
          print(constrains.maxWidth);
          if (constrains.maxWidth < 925) {
            return SmallHomeScreen();
          } else {
            return LargeHomeScreen();
          }
        },
      ),
    );
  }
}
