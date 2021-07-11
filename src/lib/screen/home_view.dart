import 'package:flutter/material.dart';
import 'package:foodorder/screen/large_home_screen.dart';
import 'package:foodorder/screen/small_home_screen.dart';
import 'package:foodorder/screen/size_config.dart';
//import 'package:sized_context/sized_context.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          double scale = screenWidth /
              (screenWidth >= kSmallScreenWidth ? kScreenWidth : kSmallScreenWidth);
          if (constraints.maxWidth < kSmallScreenWidth) {
            return MyInheritedWidget(
              child: SmallHomeScreen(),
              scale: scale,
            );
          } else {
            return MyInheritedWidget(
              child: LargeHomeScreen(),
              scale: scale,
            );
          }
        },
      ),
    );
  }
}

class MyInheritedWidget extends InheritedWidget {
  MyInheritedWidget({
    Key? key,
    required this.child,
    required this.scale,
  }) : super(key: key, child: child);

  final Widget child;

  final double scale;

  static MyInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
  }

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return true;
  }
}
