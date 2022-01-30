import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/Signup/sign_up_screen.dart';
import 'package:login/components/rounded_button.dart';
import 'package:login/components/rounded_input_field.dart';
import 'package:login/components/rounded_password_field.dart';
import 'package:login/constants.dart';
import 'package:login/screens/Login/components/already_have_an_account_check.dart';
import 'package:login/screens/Login/components/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'LOGIN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SvgPicture.asset('assets/icons/login.svg',
                height: size.height * 0.35),
            RoundedInputField(
              onChanged: (value) {},
              hintText: 'Your Email',
              icon: Icon(Icons.person, color: kPrimaryColor),
            ),
            RoundedPasswordField(
              onChanged: (val) {},
            ),
            RoundedButton(text: 'LOGIN', submitHandler: () {}),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountChecked(
              press: () {
                Navigator.of(context).pushReplacementNamed(SignUpScreen.routeName);
              },
              login: true,
            ),
            // RoundedInputField(
            //   onChanged: (value) {},
            //   hintText: 'Password',
            //   icon: Icon(Icons.lock, color: kPrimaryColor),
            //),
          ],
        ),
      ),
    );
  }
}
