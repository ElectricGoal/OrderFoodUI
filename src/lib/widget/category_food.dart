import 'package:flutter/material.dart';
import 'package:foodorder/screen/home_view.dart';

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
    double scale = MyInheritedWidget.of(context)!.scale;
    return Container(
      height: 80 * scale,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (
          BuildContext context,
          int index,
        ) {
          return InkWell(
            onTap: () {
              setState(
                () {
                  selectedIndex = index;
                },
              );
            },
            child: _ChooseEffect(
              scale: scale,
              selectedIndex: selectedIndex,
              categories: categories,
              index: index,
            ),
          );
        },
      ),
    );
  }
}

class _ChooseEffect extends StatelessWidget {
  const _ChooseEffect({
    Key? key,
    required this.scale,
    required this.selectedIndex,
    required this.categories,
    required this.index,
  }) : super(key: key);

  final double scale;
  final int selectedIndex;
  final List<String> categories;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20 * scale,
        vertical: 20 * scale,
      ),
      child: selectedIndex == index
          ? Container(
              padding: EdgeInsets.all(
                10 * scale,
              ),
              decoration: BoxDecoration(
                color: Colors.orange[800],
                borderRadius: BorderRadius.circular(
                  30 * scale,
                ),
              ),
              child: Text(
                categories[index],
                textScaleFactor: scale,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            )
          : Container(
              padding: EdgeInsets.all(
                10 * scale,
              ),
              child: Text(
                categories[index],
                overflow: TextOverflow.ellipsis,
                textScaleFactor: scale,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
    );
  }
}
