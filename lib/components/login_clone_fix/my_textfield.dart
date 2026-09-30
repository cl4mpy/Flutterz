import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final TextEditingController txtCntrller;
  final String hint;
  final bool obscureText;
  final double cRadius;
  const MyTextfield({super.key, required this.txtCntrller, required this.hint, required this.obscureText, required this.cRadius});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtCntrller,
      decoration: InputDecoration(hintText: hint, border: OutlineInputBorder(borderRadius: BorderRadius.circular(cRadius))),
      obscureText: obscureText,
    );
  }
}