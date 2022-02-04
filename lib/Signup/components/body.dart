import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/Signup/components/background.dart';
import 'package:login/Signup/components/orDivider.dart';
import 'package:login/components/rounded_button.dart';
import 'package:login/components/rounded_input_field.dart';
import 'package:login/components/rounded_password_field.dart';
import 'package:login/constants.dart';
import 'package:login/screens/Login/components/already_have_an_account_check.dart';
import 'package:login/screens/Login/login_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'SIGN UP',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            'assets/icons/signup.svg',
            height: size.height * 0.35,
          ),
          RoundedInputField(
            onChanged: (val) {},
            hintText: 'Your Email',
            icon: Icon(Icons.people),
          ),
          RoundedPasswordField(onChanged: (val) {}),
          RoundedButton(text: 'SIGN UP', submitHandler: () {}),
          SizedBox(
            height: size.height * 0.03,
          ),
          AlreadyHaveAnAccountChecked(
            questionText: 'Already have an account?',
            answerText: 'SIGN IN',
            login: false,
            press: () {
              Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
            },
          ),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIcon(iconsrc: 'assets/icons/facebook.svg', press: () {}),
              SocialIcon(iconsrc: 'assets/icons/twitter.svg', press: () {}),
              SocialIcon(iconsrc: 'assets/icons/google-plus.svg', press: () {})
            ],
          ),
        ],
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    Key? key,
    required this.iconsrc,
    required this.press,
  }) : super(key: key);
  final String iconsrc;
  final press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: kPrimaryColor),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconsrc,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
