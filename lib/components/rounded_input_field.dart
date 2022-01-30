import 'package:flutter/material.dart';
import 'package:login/components/textfield_container.dart';

class RoundedInputField extends StatelessWidget {
  const RoundedInputField(
      {Key? key,
      required this.onChanged,
      required this.hintText,
      required this.icon})
      : super(key: key);
  final String hintText;
  final Icon icon;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            border: InputBorder.none, hintText: hintText, icon: icon),
      ),
    );
  }
}
