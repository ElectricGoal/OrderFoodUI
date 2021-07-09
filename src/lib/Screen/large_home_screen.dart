import 'package:flutter/material.dart';
import 'package:foodorder/Screen/breakpoint.dart';
import 'package:foodorder/Widget/category_food.dart';
import 'package:foodorder/Widget/current_order.dart';
import 'package:foodorder/Widget/customer_view.dart';
import 'package:foodorder/Widget/bar_view.dart';
import 'package:foodorder/Widget/food_order.dart';
import 'package:foodorder/Widget/food_view.dart';
import 'package:foodorder/Widget/payment_view.dart';

// ignore: must_be_immutable
class LargeHomeScreen extends StatelessWidget {
  LargeHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double scale =
        screenWidth / (screenWidth >= 925 ? kScreenWidth : kSmallScreenWidth);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Row(
        children: [
          Flexible(
            flex: 2,
            child: Column(
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
                        left: 15 * scale,
                        right: 15 * scale,
                        bottom: 10 * scale),
                    child: CustomerInfo(),
                  ),
                ),
              ],
            ),
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
              child: Container(
                padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                child: Column(
                  children: [
                    CurrentOrder(),
                    Expanded(flex: 3, child: FoodOrder()),
                    Flexible(
                      flex: 4,
                      child: PayView(),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
