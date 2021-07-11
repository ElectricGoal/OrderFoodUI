import 'package:flutter/material.dart';
import 'package:foodorder/model/food_data.dart';

class FoodOrderList extends StatelessWidget {
  const FoodOrderList({
    Key? key,
    required this.scale,
    required this.index,
  }) : super(key: key);

  final double scale;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10 * scale,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: FittedBox(
              child: Image.asset(
                foodorder[index].imageUrl,
                scale: scale,
                height: 40,
                width: 40,
              ),
            ),
          ),
          SizedBox(
            width: 10 * scale,
          ),
          Expanded(
            flex: 3,
            child: Text(
              foodorder[index].name,
              overflow: TextOverflow.ellipsis,
              textScaleFactor: scale,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: FoodCount(
              scale: scale,
              index: index,
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                "\$" +
                    (foodorder[index].cost * foodorder[index].count).toString(),
                overflow: TextOverflow.ellipsis,
                textScaleFactor: scale,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FoodCount extends StatelessWidget {
  const FoodCount({
    Key? key,
    required this.scale,
    required this.index,
  }) : super(key: key);

  final double scale;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RemoveButton(scale: scale),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16 * scale,
          ),
          child: Text(
            foodorder[index].count.toString(),
            overflow: TextOverflow.ellipsis,
            textScaleFactor: scale,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        AddButton(scale: scale)
      ],
    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({
    Key? key,
    required this.scale,
  }) : super(key: key);

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        10 * scale,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black12,
      ),
      child: FittedBox(
        child: Icon(
          Icons.add,
          color: Colors.black,
          size: 20 * scale,
        ),
      ),
    );
  }
}

class RemoveButton extends StatelessWidget {
  const RemoveButton({
    Key? key,
    required this.scale,
  }) : super(key: key);

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10 * scale),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black12,
      ),
      child: FittedBox(
        child: Icon(
          Icons.remove,
          color: Colors.black,
          size: 20 * scale,
        ),
      ),
    );
  }
}