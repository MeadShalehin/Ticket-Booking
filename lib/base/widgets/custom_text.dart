import 'package:flutter/material.dart';
import 'package:ticket_booking_app/base/res/styles/app_styles.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Color? color;
  final double? size;
  final TextAlign align;

  const CustomText({
    super.key,
    required this.text,
    this.style,
    this.color,
    this.size,
    this.align = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: (style ?? AppStyles.headLineStyle3)
          .copyWith(color: color, fontSize: size),
    );
  }
}

////-----------for copying element with (copywith) we have to declear the element in class,const and the copywith perimeters:
/*
class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final double? size;
  final FontWeight? weight;
  final Color? color;
  final double? letterSpacing;
  final double? wordSpacing;
  final TextDecoration? decoration;

  const CustomText({
    super.key,
    required this.text,
    this.style,
    this.size,
    this.weight,
    this.color,
    this.letterSpacing,
    this.wordSpacing,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: (style ?? AppStyles.headLineStyle4).copyWith(
        fontSize: size ?? style?.fontSize,
        fontWeight: weight ?? style?.fontWeight,
        color: color ?? style?.color,
        letterSpacing: letterSpacing ?? style?.letterSpacing,
        wordSpacing: wordSpacing ?? style?.wordSpacing,
        decoration: decoration ?? style?.decoration,
      ),
    );
  }
}*/
