import 'package:flutter/material.dart';

class FoodBar extends StatelessWidget {
  const FoodBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ElectricGoal\'s BBQ Team",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 33,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.3,
                      ),
                    ),
                    Text(
                      "Location ID# ABC123",
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
                          style: TextStyle(color: Colors.black26),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle_rounded,
                              color: Colors.green,
                              size: 10,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("3 mins ago")
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 20),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.help_outline_rounded,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Help"),
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
