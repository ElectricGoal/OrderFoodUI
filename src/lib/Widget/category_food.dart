import 'package:flutter/material.dart';
import 'package:foodorder/Screen/breakpoint.dart';

class CategoryFood extends StatefulWidget {
  @override
  _CategoryFoodState createState() => _CategoryFoodState();
}

class _CategoryFoodState extends State<CategoryFood> {
  int selectedIndex = 0;

  final List<String> categories = [
    "All items",
    "Food",
    "Alcohol",
    "Cold drinks",
    "Hor drinks"
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double scale = screenWidth / (screenWidth >= 925 ? kScreenWidth : kSmallScreenWidth);
    return Container(
      height: 80 * scale,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 20 * scale, vertical: 20 * scale),
                  child: selectedIndex == index
                      ? Container(
                          padding: EdgeInsets.all(10 * scale),
                          decoration: BoxDecoration(
                            color: Colors.orange[800],
                            borderRadius: BorderRadius.circular(30 * scale),
                          ),
                          child: Text(
                            categories[index],
                            textScaleFactor: scale,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        )
                      : Container(
                          padding: EdgeInsets.all(10 * scale),
                          child: Text(
                            categories[index],
                            textScaleFactor: scale,
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        )),
            );
          }),
    );
  }
}
