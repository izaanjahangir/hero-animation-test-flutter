import 'package:flutter/material.dart';
import "./screens/home/home.dart";
import "./screens/details/details.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {"/": (context) => Home(), "/details": (context) => Details()},
    );
  }
}
