import 'package:axholutions/style.dart';
import 'package:flutter/material.dart';
import 'package:morphable_shape/morphable_shape.dart';

import '../main.dart';

class AppButton extends StatelessWidget {
  AppButton({Key? key, required this.text, this.onPressed}) : super(key: key);
  String text;
  Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color.primary,
      disabledColor: color.outline,
      shape: rectangle,
      child: Container(
        decoration: BoxDecoration(),
        child: Text(
          text.toUpperCase(),
          style: textStyleRegular(color: color.onPrimary, size: 18),
        ),
      ),
    );
  }
}

ShapeBorder rectangle = RectangleShapeBorder(
    cornerStyles: RectangleCornerStyles.all(CornerStyle.straight),
    borderRadius: DynamicBorderRadius.only(
        topLeft: DynamicRadius.circular(30.toPercentLength),
        bottomRight:
            DynamicRadius.elliptical(15.0.toPXLength, 15.0.toPXLength)));
