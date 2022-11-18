import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tasbee_app/Splash_Screen.dart';
import 'package:tasbee_app/simple.dart';

import 'advance.dart';
void main() {
  runApp(SplashScreen());
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => firstPage())));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.black,
                Colors.orange,
              ],
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(child: Image(image: AssetImage('assets/gg.gif'), height:120)),
            SizedBox(height: 10,),
            SizedBox(
              height:20,
            ),
            CircularProgressIndicator()
          ],
        ));
  }
}
class firstPage extends StatelessWidget {
const firstPage({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Container(
        color: Colors.amber,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:80),
              child:Text(
                'Tasbee App',style: TextStyle(
                fontSize: 50,
                fontWeight:FontWeight.bold,
                color: Colors.black,
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Center(
                child: TextButton(
                  onPressed: () {
                    Get.to(simple());
                  },
                  child: Icon(
                    Icons.play_circle_fill_outlined,
                    color: Colors.black87,
                    size: 100.0,
                  ),

                ),
              ),
            ),
            Text('Simple',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: TextButton(
            onPressed: () {
              Get.to(advance());
            },
            child: Icon(
              Icons.play_circle_fill_outlined,
              color: Colors.black87,
              size: 100.0,
            ),
          ),
        ),
      ),
            Text('Advance',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
         ],
        ),
      ),
    ),
  );
}
}


