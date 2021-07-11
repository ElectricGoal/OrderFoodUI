import 'package:flutter/material.dart';
import 'package:foodorder/widget/bar_view.dart';
import 'package:foodorder/widget/category_food.dart';
import 'package:foodorder/widget/current_order.dart';
import 'package:foodorder/widget/customer_view.dart';
import 'package:foodorder/widget/food_order.dart';
import 'package:foodorder/widget/food_view.dart';
import 'package:foodorder/widget/payment_view.dart';

class RightHomeScreen extends StatelessWidget {
  const RightHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        right: 20,
        left: 20,
      ),
      child: Column(
        children: [
          CurrentOrder(),
          Expanded(
            child: FoodOrder(),
          ),
          PayView()
        ],
      ),
    );
  }
}

class LeftHomeScreen extends StatelessWidget {
  const LeftHomeScreen({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        FoodBar(),
        CategoryFood(),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: FoodView(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 15,
            right: 15,
            bottom: 10,
          ),
          child: CustomerInfo(),
        ),
      ],
    );
  }
}
