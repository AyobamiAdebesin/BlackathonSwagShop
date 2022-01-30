import 'package:flutter/material.dart';
import 'package:login/Signup/sign_up_screen.dart';
import 'package:login/constants.dart';
import 'package:login/screens/Login/login_screen.dart';
import 'package:login/screens/Welcome/welcome_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kPrimaryLightColor),
      home: WelcomeScreen(),
      routes: {
        SignUpScreen.routeName: (ctx) => SignUpScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
      },
    );
  }
}
