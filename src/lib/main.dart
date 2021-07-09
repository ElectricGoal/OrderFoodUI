import 'package:flutter/material.dart';
import 'package:foodorder/Screen/home_view.dart';

import 'Screen/large_home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OrderFoodUI Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: HomeView(),
    );
  }
}
