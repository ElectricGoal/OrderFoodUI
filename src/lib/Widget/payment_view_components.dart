import 'package:flutter/material.dart';

class BalanceDue extends StatelessWidget {
  const BalanceDue({
    Key? key,
    required this.scale,
  }) : super(key: key);

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 20,
      ),
      padding: EdgeInsets.only(
        bottom: 5,
      ),
      child: BalanceDueText(scale: scale),
    );
  }
}

class BalanceDueText extends StatelessWidget {
  const BalanceDueText({
    Key? key,
    required this.scale,
  }) : super(key: key);

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Balance due",
          textScaleFactor: scale,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          "\$10.65",
          textScaleFactor: scale,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}

class PayButton extends StatelessWidget {
  const PayButton({
    Key? key,
    required this.scale,
  }) : super(key: key);

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 60,
      ),
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        bottom: 5 * scale,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 20 * scale,
      ),
      decoration: BoxDecoration(
        color: Colors.orange[800],
        borderRadius: BorderRadius.circular(13),
      ),
      child: Text(
        "Pay with Cashless credit",
        overflow: TextOverflow.ellipsis,
        textScaleFactor: scale,
        style: TextStyle(
          color: Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.2,
        ),
      ),
    );
  }
}

class CashlessCredit extends StatelessWidget {
  const CashlessCredit({
    Key? key,
    required this.scale,
  }) : super(key: key);

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 80,
      ),
      margin: EdgeInsets.only(
        bottom: 10 * scale,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 15 * scale,
        vertical: 10 * scale,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CashlessText(scale: scale),
          CancelButton(scale: scale),
        ],
      ),
    );
  }
}

class CancelButton extends StatelessWidget {
  const CancelButton({
    Key? key,
    required this.scale,
  }) : super(key: key);

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20 * scale),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Text(
        "Cancel",
        overflow: TextOverflow.ellipsis,
        textScaleFactor: scale,
        style: TextStyle(
          color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class CashlessText extends StatelessWidget {
  const CashlessText({
    Key? key,
    required this.scale,
  }) : super(key: key);

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "CASHLESS CREDIT",
          textScaleFactor: scale,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 10,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.1,
          ),
        ),
        Text(
          "\$100.5",
          textScaleFactor: scale,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.orange[800],
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Available",
          textScaleFactor: scale,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}

class TotalPay extends StatelessWidget {
  const TotalPay({
    Key? key,
    required this.scale,
  }) : super(key: key);

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 150,
      ),
      margin: EdgeInsets.only(
        bottom: 10 * scale,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 15 * scale,
        vertical: 15 * scale,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SubtotalText(scale: scale),
          DiscountText(scale: scale),
          TaxText(scale: scale),
          Divider(
            color: Colors.grey,
            thickness: 0.5,
            height: 5 * scale,
          ),
          TotalText(scale: scale),
        ],
      ),
    );
  }
}

class TotalText extends StatelessWidget {
  const TotalText({
    Key? key,
    required this.scale,
  }) : super(key: key);

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Total",
          textScaleFactor: scale,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        Text(
          "\$89.85",
          textScaleFactor: scale,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class TaxText extends StatelessWidget {
  const TaxText({
    Key? key,
    required this.scale,
  }) : super(key: key);

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Sales tax",
          textScaleFactor: scale,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        Text(
          "\$8.25",
          textScaleFactor: scale,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class DiscountText extends StatelessWidget {
  const DiscountText({
    Key? key,
    required this.scale,
  }) : super(key: key);

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Discounts",
          textScaleFactor: scale,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        Text(
          "\-\$20.4",
          textScaleFactor: scale,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class SubtotalText extends StatelessWidget {
  const SubtotalText({
    Key? key,
    required this.scale,
  }) : super(key: key);

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Subtotal",
          textScaleFactor: scale,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        Text(
          "\$102",
          textScaleFactor: scale,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
