import 'package:flutter/material.dart';
import 'package:foodorder/Widget/border_gradient.dart';

class WristbandInfo extends StatelessWidget {
  const WristbandInfo({
    Key? key,
    required this.scale,
  }) : super(key: key);

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 1,
          child: Text(
            "WRISTBAND INFORMATION",
            textScaleFactor: scale,
            style: TextStyle(
              color: Colors.black,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 6 / scale,
        ),
        Flexible(
          flex: 3,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AvatarCustomer(scale: scale),
              NameAndVip(scale: scale),
              UnlinkButton(scale: scale)
            ],
          ),
        ),
      ],
    );
  }
}

class AvatarCustomer extends StatelessWidget {
  const AvatarCustomer({
    Key? key,
    required this.scale,
  }) : super(key: key);

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 15 * scale,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          "asset/image/oto.jpg",
          scale: scale,
        ),
      ),
    );
  }
}

class UnlinkButton extends StatelessWidget {
  const UnlinkButton({
    Key? key,
    required this.scale,
  }) : super(key: key);

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        padding: EdgeInsets.all(
          20 * scale,
        ),
        decoration: BoxDecoration(
          color: Colors.pinkAccent,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Text(
          "Unlink",
          overflow: TextOverflow.ellipsis,
          textScaleFactor: scale,
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}

class NameAndVip extends StatelessWidget {
  const NameAndVip({
    Key? key,
    required this.scale,
  }) : super(key: key);

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Oto Ai",
            textScaleFactor: scale,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 7 / scale,
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.amber,
                  Colors.pink,
                ],
              ),
            ),
            child: Text(
              "VIP TICKET HOLDER",
              overflow: TextOverflow.ellipsis,
              textScaleFactor: scale,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 8,
                letterSpacing: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PromoInfo extends StatelessWidget {
  const PromoInfo({
    Key? key,
    required this.scale,
  }) : super(key: key);

  final double scale;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textScaleFactor: scale,
      text: TextSpan(
        children: [
          TextSpan(
            text: "SELECT AVAILABLE PROMO TO APPLY",
            style: TextStyle(
              color: Colors.black,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: "  (LIMIT 1 PER ORDER)",
            style: TextStyle(
              color: Colors.black45,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

class ChooseEffect extends StatelessWidget {
  const ChooseEffect({
    Key? key,
    required this.scale,
    required this.selectedIndex,
    required this.index,
    required this.promo,
  }) : super(key: key);

  final double scale;
  final int selectedIndex;
  final List<String> promo;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 28 * scale,
        bottom: 5 / scale,
      ),
      child: selectedIndex != index
          ? Container(
              constraints: BoxConstraints(
                maxWidth: 150,
              ),
              padding: EdgeInsets.all(17),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                promo[index],
                textScaleFactor: scale,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : Container(
              constraints: BoxConstraints(
                maxWidth: 150,
              ),
              decoration: kGradientBoxDecoration,
              child: Padding(
                padding: EdgeInsets.all(2),
                child: Container(
                  decoration: kInnerDecoration,
                  //alignment: Alignment.center,
                  padding: EdgeInsets.all(13),
                  child: Text(
                    promo[index],
                    textScaleFactor: scale,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
