import 'package:flutter/material.dart';

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
    return Container(
      height: 80,
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
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: selectedIndex == index
                      ? Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.orange[800],
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            categories[index],
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        )
                      : Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            categories[index],
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        )),
            );
          }),
    );
  }
}
