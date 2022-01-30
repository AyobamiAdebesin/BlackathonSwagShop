import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {Key? key,
      required this.text,
      this.color = kPrimaryColor,
      this.textColor = Colors.white,
      required this.submitHandler})
      : super(key: key);

  final String text;
  final Color color, textColor;
  final submitHandler;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: color,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            ),
            onPressed: submitHandler,
            child: Text(text, style: TextStyle(color: textColor))),
      ),
    );
  }
}
