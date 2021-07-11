import 'package:flutter/material.dart';
import 'package:foodorder/screen/home_view.dart';

class CurrentOrder extends StatelessWidget {
  const CurrentOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double scale = MyInheritedWidget.of(context)!.scale;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: Text(
            "Current order",
            textScaleFactor: scale,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: ClearButton(
            scale: scale,
          ),
        ),
        Flexible(
          flex: 1,
          child: SettingButton(
            scale: scale,
          ),
        )
      ],
    );
  }
}

class SettingButton extends StatelessWidget {
  const SettingButton({
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
      child: Icon(
        Icons.settings,
        color: Colors.black,
      ),
    );
  }
}

class ClearButton extends StatelessWidget {
  const ClearButton({
    Key? key,
    required this.scale,
  }) : super(key: key);

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        15 * scale,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.pink[50],
      ),
      child: Text(
        "Clear all",
        textScaleFactor: scale,
        style: TextStyle(
          color: Colors.pinkAccent,
          fontSize: 15,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
