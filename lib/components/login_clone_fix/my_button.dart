import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color bgColor;
  final Color fgColor;
  final double elevation;
  final double br;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  const MyButton({
    super.key, 
    required this.onPressed, 
    required this.bgColor, 
    required this.fgColor, 
    required this.elevation, 
    required this.br,
    required this.text, 
    required this.fontSize, 
    required this.fontWeight
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        foregroundColor: fgColor,
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(br),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}