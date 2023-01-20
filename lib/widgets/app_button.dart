import 'package:axholutions/style.dart';
import 'package:flutter/material.dart';

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
      child: Text(
        text.toUpperCase(),
        style: textStyleRegular(color: color.onPrimary, size: 18),
      ),
    );
  }
}
