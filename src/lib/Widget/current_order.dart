import 'package:flutter/material.dart';

class CurrentOrder extends StatelessWidget {
  const CurrentOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: Text(
            "Current order",
            style: TextStyle(
                color: Colors.black, 
                fontSize: 30, 
                fontWeight: FontWeight.bold),
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.pink[50],
            ),
            child: Text(
            "Clear all",
            style: TextStyle(
                color: Colors.pinkAccent, 
                fontSize: 15, 
                fontWeight: FontWeight.w300),
          ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black12,
            ),
            child: Icon(
              Icons.settings,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
