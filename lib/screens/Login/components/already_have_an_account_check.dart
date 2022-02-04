import 'package:flutter/material.dart';
import 'package:login/Signup/sign_up_screen.dart';
import 'package:login/constants.dart';

class AlreadyHaveAnAccountChecked extends StatelessWidget {
  const AlreadyHaveAnAccountChecked({
    Key? key,
    required this.login,
    required this.press,
    required this.questionText,
    required this.answerText,
  }) : super(key: key);
  final bool login;
  final press;
  final String questionText, answerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          questionText,
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            answerText,
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
