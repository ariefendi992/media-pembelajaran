import 'package:flutter/material.dart';
import 'package:media_pembelajaran/shared/theme.dart';

class WGambarTitle extends StatelessWidget {
  final String text;
  final String fontFamily;
  final EdgeInsets margin;
  final double fontSize;
  final TextAlign textAlign;
  final double height;
  const WGambarTitle({
    super.key,
    required this.text,
    this.fontFamily = 'Caveat Brush',
    this.fontSize = 12,
    this.textAlign = TextAlign.center,
    this.margin = EdgeInsets.zero,
    this.height = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Text(
        text,
        style: blackTextStyle.copyWith(
          fontFamily: fontFamily,
          fontSize: fontSize,
          height: height,
        ),
        textAlign: textAlign,
      ),
    );
  }
}
