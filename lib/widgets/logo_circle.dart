import 'package:axholutions/main.dart';
import 'package:flutter/material.dart';

class LogoCircle extends StatelessWidget {
  const LogoCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        color: color.onBackground,
        borderRadius:
            BorderRadius.circular(MediaQuery.of(context).size.width / 4),
      ),
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(MediaQuery.of(context).size.width / 4),
        child: Image.asset("assets/images/logo.png"),
      ),
    );
  }
}
