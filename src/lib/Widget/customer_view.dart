import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:foodorder/Screen/home_view.dart';
import 'package:foodorder/Widget/customer_view_components.dart';

class CustomerInfo extends StatefulWidget {
  @override
  _CustomerInfoState createState() => _CustomerInfoState();
}

class _CustomerInfoState extends State<CustomerInfo> {
  final List<String> promo = [
    "\$5 Off any item",
    "Free Beverage",
    "20% off entire order",
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double scale = MyInheritedWidget.of(context)!.scale;
    return Container(
      height: 100,
      padding: EdgeInsets.only(
        right: 20 * scale,
        left: 20 * scale,
        top: 20 * scale,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Flexible(
            flex: 2,
            child: WristbandInfo(
              scale: scale,
            ),
          ),
          VerticalDivider(
            color: Colors.grey,
            thickness: 1,
            indent: 20,
            endIndent: 20,
            width: 10,
          ),
          Flexible(
            flex: 3,
            child: Container(
              padding: EdgeInsets.only(
                left: 20 * scale,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 1,
                    child: PromoInfo(
                      scale: scale,
                    ),
                  ),
                  SizedBox(
                    height: 6 * 1 / scale,
                  ),
                  Flexible(
                    flex: 3,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: promo.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            setState(
                              () {
                                selectedIndex = index;
                              },
                            );
                          },
                          child: ChooseEffect(
                            scale: scale,
                            selectedIndex: selectedIndex,
                            promo: promo,
                            index: index,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
