import 'package:flutter/material.dart';
import 'package:foodorder/Screen/home_view.dart';
import 'package:foodorder/model/food_data.dart';
import 'package:foodorder/widget/food_order_components.dart';

class FoodOrder extends StatelessWidget {
  const FoodOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double scale = MyInheritedWidget.of(context)!.scale;
    return ListView.builder(
      itemCount: foodorder.length,
      itemBuilder: (BuildContext context, int index) {
        return FoodOrderList(
          scale: scale,
          index: index,
        );
      },
    );
  }
}


