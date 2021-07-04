import 'dart:ui';

import 'package:flutter/material.dart';
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
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.only(right: 30, left: 20, top: 20),
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
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Flexible(
                  flex: 3,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "asset/image/oto.jpg",
                            height: 50,
                            width: 50,
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
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 9),
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
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Text(
                            "Unlink",
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
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 1,
                    child: RichText(
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
                    height: 6,
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
                                  padding:
                                      EdgeInsets.only(right: 28, bottom: 5),
                                  child: selectedIndex != index
                                      ? Container(
                                          padding: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                            color: Colors.black12,
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Text(
                                            promo[index],
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      : Container(
                                          decoration: kGradientBoxDecoration,
                                          child: Padding(
                                            padding: EdgeInsets.all(2),
                                            child: Container(
                                              decoration: kInnerDecoration,
                                              padding: EdgeInsets.all(16),
                                              child: Text(
                                                promo[index],
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


