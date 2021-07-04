import 'package:flutter/material.dart';
import 'package:foodorder/model/food_data.dart';

class FoodOrder extends StatelessWidget {
  const FoodOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: foodorder.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(
                    foodorder[index].imageUrl,
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    flex: 3,
                    child: Text(
                      foodorder[index].name,
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
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black12,
                        ),
                        child: Icon(
                          Icons.remove,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          foodorder[index].count.toString(),
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black12,
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
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
