import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key, required this.text, this.fontSize, this.fontColor, this.fontWeight,
  });

  final String text;
  final double? fontSize;
  final Color? fontColor;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: fontColor,
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight,
      ),
    );
  }
}