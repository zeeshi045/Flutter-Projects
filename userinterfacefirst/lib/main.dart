import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Scaffold(
        body:Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Row(
         children: [
           SizedBox(width: 30,
           height: 80,),
        Text('Hi, Den!',
          style:TextStyle(color: Colors.black,
            fontSize: 18,
          ),
        ),
         ],
          ),
          Column(
            children: [
      Text('Hi, Den!',
        style:TextStyle(color: Colors.black,
          fontSize: 18,
        ),
      ),
           ] ,
          ),

  ],
        ),
        ),
    );
  }
}
