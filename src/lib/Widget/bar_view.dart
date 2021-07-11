import 'package:flutter/material.dart';
import 'package:foodorder/Screen/home_view.dart';

// ignore: must_be_immutable
class FoodBar extends StatelessWidget {
  FoodBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double scale = MyInheritedWidget.of(context)!.scale;
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RestaurantName(scale: scale),
              Row(
                children: [
                  OnlineInfo(scale: scale),
                  SizedBox(
                    width: 20 * scale,
                  ),
                  HelpButton(scale: scale),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HelpButton extends StatelessWidget {
  const HelpButton({
    Key? key,
    required this.scale,
  }) : super(key: key);

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            overflow: TextOverflow.ellipsis,
            textScaleFactor: scale,
          ),
        ],
      ),
    );
  }
}

class OnlineInfo extends StatelessWidget {
  const OnlineInfo({
    Key? key,
    required this.scale,
  }) : super(key: key);

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Last sync",
            overflow: TextOverflow.ellipsis,
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
                overflow: TextOverflow.ellipsis,
                textScaleFactor: scale,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class RestaurantName extends StatelessWidget {
  const RestaurantName({
    Key? key,
    required this.scale,
  }) : super(key: key);

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20 * scale),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ElectricGoal\'s BBQ Team",
            overflow: TextOverflow.ellipsis,
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
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 17,
              color: Colors.black38,
            ),
          ),
        ],
      ),
    );
  }
}
