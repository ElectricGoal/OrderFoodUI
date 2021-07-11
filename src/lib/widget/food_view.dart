import 'package:flutter/material.dart';
import 'package:foodorder/screen/home_view.dart';
import 'package:foodorder/model/food_data.dart';

class FoodView extends StatelessWidget {
  const FoodView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double scale = MyInheritedWidget.of(context)!.scale;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 2 / 1,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemCount: foodlist.length,
      itemBuilder: (BuildContext context, int index) {
        return FoodInfo(
          scale: scale,
          index: index,
        );
      },
    );
  }
}

// ignore: must_be_immutable
class FoodInfo extends StatelessWidget {
  FoodInfo({
    Key? key,
    required this.scale,
    required this.index,
  }) : super(key: key);

  final double scale;
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            flex: 2,
            child: FoodNameWeightPrice(index: index, scale: scale),
          ),
          Flexible(
            //Image of food
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                foodlist[index].imageUrl,
                scale: scale,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class FoodNameWeightPrice extends StatelessWidget {
  const FoodNameWeightPrice({
    Key? key,
    required this.index,
    required this.scale,
  }) : super(key: key);

  final int index;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            foodlist[index].name,
            textScaleFactor: scale,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Flexible(
          child: Text(
            foodlist[index].weight.toString() + 'g',
            overflow: TextOverflow.ellipsis,
            textScaleFactor: scale,
            style: TextStyle(fontSize: 15, color: Colors.black45),
          ),
        ),
        SizedBox(
          height: 30 * scale,
        ),
        Flexible(
          child: Text(
            "\$" + foodlist[index].cost.toStringAsFixed(2),
            textScaleFactor: scale,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.orange[800],
            ),
          ),
        ),
      ],
    );
  }
}
