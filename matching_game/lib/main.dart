import 'dart:async';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                SecondScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        // child:FlutterLogo(size:MediaQuery.of(context).size.height)
      child:Image.asset(
        'images/ff.jpeg',
        height: 60,
        width: 50,
      ),
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
        primarySwatch: Colors.green,
    ),
    home: home(),
      debugShowCheckedModeBanner: false,

    );
  }
}
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Matching game'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children:[
            Text('Level 1',
              style: TextStyle(
                fontSize:30,
                color: Colors.black87,
              ),
            ),
          SizedBox(height: 10,),
            Row(
              children: [
                TextButton(
                  onPressed:(){},
                  child: Image.asset("images/2.JPG",
                    height: 60,
                    width: 66,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed:(){},
                  child: Text('4',
                    style: TextStyle(
                      fontSize:22,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],

            ),
            SizedBox(height: 15,),
            Row(
              children: [
                TextButton(
                  onPressed:(){},
                  child: Image.asset("images/4.JPG",
                    height: 60,
                    width: 66,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed:(){},
                  child: Text('3',
                    style: TextStyle(
                      fontSize:22,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                TextButton(
                  onPressed:(){},
                  child: Image.asset("images/5.png",
                    height: 60,
                    width: 66,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed:(){},
                  child: Text('1',
                    style: TextStyle(
                      fontSize:22,
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],

            ),
            SizedBox(height: 15,),
            Row(
              children: [
                TextButton(
                  onPressed:(){},
                  child: Image.asset("images/1.JPG",
                    height: 60,
                    width: 66,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed:(){},
                  child: Text('5',
                    style: TextStyle(
                      fontSize:22,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],

            ),
            SizedBox(height: 15,),
            Row(
              children: [
                TextButton(
                  onPressed:(){},
                  child: Image.asset("images/3.png",
                    height: 60,
                    width: 66,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed:(){},
                  child: Text('2',
                    style: TextStyle(
                      fontSize:22,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],

            ),
          ],
        ),
      ),
    );
  }
}

