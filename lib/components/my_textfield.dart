import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatelessWidget {
  final String hint;
  final TextEditingController txtCntrller;
  final double cRadius;
  final TextInputFormatter? inputType;
  final IconData? prefixIcon;
  const MyTextField({
    super.key, 
    required this.hint, 
    required this.txtCntrller, 
    required this.cRadius,
    this.inputType,
    this.prefixIcon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextField(
        inputFormatters: inputType != null ? [inputType!] : null,
        controller: txtCntrller,
        decoration: InputDecoration(hintText: hint, hintStyle: TextStyle(fontSize: 20), border: OutlineInputBorder(borderRadius: BorderRadius.circular(cRadius)), contentPadding: EdgeInsets.all(25),
        prefixIcon: prefixIcon != null ?
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Icon(prefixIcon),
          ) : null),
        style: TextStyle(fontSize: 20),
      ),  
    );
  }
}