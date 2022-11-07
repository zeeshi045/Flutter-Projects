import 'package:flutter/material.dart';
import 'Screen1.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Screen2',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
          child: Text('Go back',style: TextStyle(color: Colors.white)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}