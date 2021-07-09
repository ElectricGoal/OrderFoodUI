import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodorder/Screen/breakpoint.dart';
import 'package:foodorder/Widget/border_gradient.dart';

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
    double screenWidth = MediaQuery.of(context).size.width;
    double scale = screenWidth / (screenWidth >= 925 ? kScreenWidth : kSmallScreenWidth);
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding:
          EdgeInsets.only(right: 20 * scale, left: 20 * scale, top: 20 * scale),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ]),
      child: Row(
        children: [
          Flexible(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Text(
                    "WRISTBAND INFORMATION",
                    textScaleFactor: scale,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 6 * scale,
                ),
                Flexible(
                  flex: 3,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 15 * scale),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "asset/image/oto.jpg",
                            scale: scale,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Oto Ai",
                              textScaleFactor: scale,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 7 * scale,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10 * scale, vertical: 9 * scale),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Colors.amber,
                                        Colors.pink,
                                      ])),
                              child: Text(
                                "VIP TICKET HOLDER",
                                textScaleFactor: scale,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 8,
                                    letterSpacing: 1.5),
                              ),
                            )
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.all(20 * scale),
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Text(
                            "Unlink",
                            textScaleFactor: scale,
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
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
              padding: EdgeInsets.only(left: 20 * scale),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 1,
                    child: RichText(
                      textScaleFactor: scale,
                      text: TextSpan(children: [
                        TextSpan(
                          text: "SELECT AVAILABLE PROMO TO APPLY",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: "  (LIMIT 1 PER ORDER)",
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 6 * scale,
                  ),
                  Flexible(
                      flex: 3,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: promo.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      right: 28 * scale, bottom: 5 * scale),
                                  child: selectedIndex != index
                                      ? Container(
                                          padding: EdgeInsets.all(20 * scale),
                                          decoration: BoxDecoration(
                                            color: Colors.black12,
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Text(
                                            promo[index],
                                            textScaleFactor: scale,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      : Container(
                                          decoration: kGradientBoxDecoration,
                                          child: Padding(
                                            padding: EdgeInsets.all(2 * scale),
                                            child: Container(
                                              decoration: kInnerDecoration,
                                              padding:
                                                  EdgeInsets.all(16 * scale),
                                              child: Text(
                                                promo[index],
                                                textScaleFactor: scale,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        )),
                            );
                          }))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
