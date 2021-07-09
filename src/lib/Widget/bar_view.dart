import 'package:flutter/material.dart';
import 'package:foodorder/Screen/breakpoint.dart';

// ignore: must_be_immutable
class FoodBar extends StatelessWidget {
  FoodBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double scale = screenWidth / (screenWidth >= 925 ? kScreenWidth : kSmallScreenWidth);
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20 * scale),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ElectricGoal\'s BBQ Team",
                      textScaleFactor: scale,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 33,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.3,
                      ),
                    ),
                    Text(
                      "Location ID# ABC123",
                      textScaleFactor: scale,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black38,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Last sync",
                          textScaleFactor: scale,
                          style: TextStyle(color: Colors.black26),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle_rounded,
                              color: Colors.green,
                              size: 10 * scale,
                            ),
                            SizedBox(
                              width: 10 * scale,
                            ),
                            Text(
                              "3 mins ago",
                              textScaleFactor: scale,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20 * scale,
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 20 * scale),
                      padding: EdgeInsets.all(12 * scale),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(13 * scale),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.help_outline_rounded,
                            color: Colors.black,
                          ),
                          SizedBox(width: 10 * scale),
                          Text(
                            "Help",
                            textScaleFactor: scale,
                          ),
                        ],
                      )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
