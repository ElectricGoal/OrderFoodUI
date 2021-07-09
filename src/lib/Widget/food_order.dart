import 'package:flutter/material.dart';
import 'package:foodorder/Screen/breakpoint.dart';
import 'package:foodorder/model/food_data.dart';

class FoodOrder extends StatelessWidget {
  const FoodOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double scale = screenWidth / kScreenWidth;
    return ListView.builder(
        itemCount: foodorder.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 10 * scale),
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
                      textScaleFactor: scale,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black),
                    )),
                Flexible(
                  flex: 3,
                  child: Row(
                    children: [
                      Container(
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
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16 * scale),
                        child: Text(
                          foodorder[index].count.toString(),
                          textScaleFactor: scale,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10 * scale),
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
                      )
                    ],
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "\$" + (foodorder[index].cost * foodorder[index].count).toString(),
                      textScaleFactor: scale,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
