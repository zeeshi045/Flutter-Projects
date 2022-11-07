import 'package:flutter/material.dart';
import 'package:weatherapp/Screen0.dart';
import 'package:weatherapp/Screen2.dart';
import 'package:weatherapp/screen1.dart';

void main() {
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Screen1(),
    );
  }
}