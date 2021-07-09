import 'package:flutter/material.dart';
import 'package:foodorder/Screen/breakpoint.dart';
import 'package:foodorder/Widget/bar_view.dart';
import 'package:foodorder/Widget/category_food.dart';
import 'package:foodorder/Widget/customer_view.dart';
import 'package:foodorder/Widget/food_view.dart';

// ignore: must_be_immutable
class SmallHomeScreen extends StatelessWidget {
  SmallHomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double scale = screenWidth / (screenWidth >= 925 ? kScreenWidth : kSmallScreenWidth);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          FoodBar(),
          CategoryFood(),
          Expanded(
              flex: 10,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20 * scale),
                child: FoodView(),
              )),
          Flexible(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 15 * scale, right: 15 * scale, bottom: 10 * scale),
              child: CustomerInfo(),
            ),
          ),
        ],
      ),
    );
  }
}
