import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/Signup/sign_up_screen.dart';
import 'package:login/components/rounded_button.dart';
import 'package:login/screens/Login/login_screen.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'WELCOME TO BLACKATHON!',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            SvgPicture.asset('assets/icons/chat.svg',
                height: size.height * 0.45),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
                text: 'LOGIN',
                submitHandler: () {
                  Navigator.of(context).pushNamed(LoginScreen.routeName);
                }),
            SizedBox(
              height: size.height * 0.02,
            ),
            RoundedButton(
                text: 'SIGNUP',
                submitHandler: () {
                  Navigator.of(context).pushNamed(SignUpScreen.routeName);
                })
          ],
        ),
      ),
    );
  }
}
