import 'package:flutter/material.dart';
import 'package:voy_xaba/screens/dad_joke.dart';
import 'package:voy_xaba/screens/display_text.dart';
import 'package:voy_xaba/services/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const DisplayText(),
      routes:  {
        routes.home: (context) => const DisplayText(),
        routes.joke: (context) => const DadJoke(),
      },
    );
  }
}
