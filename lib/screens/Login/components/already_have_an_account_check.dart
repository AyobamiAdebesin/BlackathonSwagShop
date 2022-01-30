import 'package:flutter/material.dart';
import 'package:login/Signup/sign_up_screen.dart';
import 'package:login/constants.dart';

class AlreadyHaveAnAccountChecked extends StatelessWidget {
  const AlreadyHaveAnAccountChecked({
    Key? key,
    required this.login,
    required this.press,
  }) : super(key: key);
  final bool login;
  final press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Dont have an account?',
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            'Sign Up',
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
