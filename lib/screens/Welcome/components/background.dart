import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  Background({required this.child});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // This size provide us total height and width of our screen
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            child: Image.asset(
              'assets/images/main_top.png',
              width: size.width * 0.3,
            ),
            top: 0,
            left: 0,
          ),
          Positioned(
            child: Image.asset('assets/images/main_bottom.png',
                width: size.width * 0.2),
            bottom: 0,
            left: 0,
          ),
          child,
        ],
      ),
    );
  }
}
