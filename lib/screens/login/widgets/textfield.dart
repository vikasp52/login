import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    Key? key,
    required this.hintText,
    required this.icons,
  }) : super(key: key);

  final String hintText;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xffa19d9d),
          fontWeight: FontWeight.w500,
        ),
        fillColor: Colors.blue,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        prefixIcon: Icon(
          icons,
          color: Colors.black,
        ),
      ),
    );
  }
}
