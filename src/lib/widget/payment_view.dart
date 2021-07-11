import 'package:flutter/material.dart';
import 'package:foodorder/Screen/home_view.dart';
import 'package:foodorder/Widget/payment_view_components.dart';

class PayView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double scale = MyInheritedWidget.of(context)!.scale;
    return Column(
      children: [
        TotalPay(scale: scale),
        CashlessCredit(scale: scale),
        PayButton(scale: scale),
        BalanceDue(scale: scale)
      ],
    );
  }
}


