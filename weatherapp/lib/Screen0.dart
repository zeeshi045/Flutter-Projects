import 'package:flutter/material.dart';
import 'package:weatherapp/Screen2.dart';
import 'package:weatherapp/Screen1.dart';
import 'Screen2.dart';
import 'Screen1.dart';
class Screen0 extends StatelessWidget {
  const Screen0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Screen0'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
             TextButton(
               style: TextButton.styleFrom(
                 backgroundColor: Colors.red,
               ),
                child: Text('Go forward S1'),
                onPressed: () {
                  Navigator.pushNamed(context, '/first');
                },
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: Text('Go forward S1'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');

                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}