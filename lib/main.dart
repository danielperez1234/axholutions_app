import 'package:axholutions/color_schemes.g.dart';
import 'package:axholutions/widgets/app_button.dart';
import 'package:axholutions/widgets/logo_circle.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

late ColorScheme color;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Axholution',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    color = Theme.of(context).colorScheme;
    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          title: Text("Axholutions"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LogoCircle(),
              Card(
                color: color.tertiaryContainer,
                shadowColor: color.shadow,
                surfaceTintColor: Colors.red,
                child: Text("hola"),
              ),
              AppButton(
                text: "Pressme",
                onPressed: () {},
              )
            ],
          ),
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: () => {}, tooltip: 'Increment'));
  }
}
