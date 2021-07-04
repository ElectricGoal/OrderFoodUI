import 'package:flutter/material.dart';

import 'Screen/home_screen.dart';

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
      home: HomeScreen(),
    );
  }
}
