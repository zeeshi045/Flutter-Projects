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
        backgroundColor:Colors.red,
        body:SafeArea(
        child: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.bottomLeft,
        colors: [
        Colors.amber,
          Colors.black,
        ],
    )
    ),

          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              CircleAvatar(
                backgroundColor: Colors.green,
                backgroundImage:AssetImage('images/a1.JPG') ,
                radius: 80.0,
              ),
              SizedBox(
                height: 10,
              ),
              Text('Muhammad Zeeshan Farooq',
                  style:TextStyle(color: Colors.black,
                    fontWeight:FontWeight.bold,
                    fontSize: 20,
                  ),
              ),
              Text('PHP DEVELOPER',
                style:TextStyle(color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20.0,
                width:400.0,
                child:Divider(
                  color: Colors.white,
                  thickness: 2.0,

                )
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10.0),
                margin:EdgeInsets.symmetric(vertical:10.0,horizontal: 25.0),
                child:Row(
                  children:[
                    Icon(
                      Icons.phone,
                      color:Colors.green,
                      size: 30.0,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text('+923498776860',

                    style:TextStyle(
                      fontSize:15.0,
                    ),
              ),

                  ],


                ),
              ),

              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10.0),
                margin:EdgeInsets.symmetric(vertical:10.0,horizontal: 25.0),
                child:Row(
                  children:[
                    Icon(
                      Icons.email,
                      color:Colors.black,
                      size: 30.0,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text('Zeeshi00@gmail.com',
                      style:TextStyle(
                        fontSize:15.0,
                      ),
                    ),

                  ],


                ),
              ),
            ],

          ),
        ),
      ),
      ),
    );
  }
}


