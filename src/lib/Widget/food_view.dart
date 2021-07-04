import 'package:flutter/material.dart';
import 'package:foodorder/model/food_data.dart';

class FoodView extends StatelessWidget {
  const FoodView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 2/1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: foodlist.length,
        itemBuilder: (BuildContext context, int index) {
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          foodlist[index].name,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          foodlist[index].weight.toString() + 'g',
                          style: TextStyle(fontSize: 15, color: Colors.black45),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Flexible(
                        child: Text(
                          "\$" + foodlist[index].cost.toString(),
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange[800]),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      foodlist[index].imageUrl,
                      height: 80,
                      width: 80,
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
