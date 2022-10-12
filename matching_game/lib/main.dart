import 'dart:async';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

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
    return GetMaterialApp(
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
int b1=0;
int b2=0;
int b3=0;
int b4=0;
int b5=0;
int b6=0;
int b7=0;
int b8=0;
int b9=0;
int b10=0;
int count1=0;
int count2=0;
one(){
  if(count1==2){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/win.wav"),
    );
    // Get.to(const send());
  }
}
one1(){
  if(count2==2){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/loser.ogg"),
    );
    count2=0;
  }
}
function1(){
  if(b1==1 && b2==1) {
    count1=count1+1;
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.ogg"),
    );
    b1=0;
    b2=0;
  }
 else if(b1!=1 && b2==1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/not.ogg"),
    );
    count2=count2+1;
  }
}
function2(){
  if(b3==1 && b4==1) {
    count1=count1+1;
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.ogg"),
    );
    b3=0;
    b4=0;
  }
  if(b3!=1 && b4==1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/not.ogg"),
    );
    count2=count2+1;
  }
}
function3(){
  if(b5==1 && b6==1) {
    count1=count1+1;
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.ogg"),
    );
    b5=0;
    b6=0;
  }
   if(b5!=1 && b6==1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/not.ogg"),
    );
    count2=count2+1;

  }
}
function4(){
  if(b7==1 && b8==1) {
    count1=count1+1;
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.ogg"),
    );
    b7=0;
    b8=0;
  }
  if(b7!=1 && b8==1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/not.ogg"),
    );
    count2=count2+1;
  }
}
function5(){
  if(b9==1 && b10==1) {
    count1=count1+1;
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.ogg"),
    );
    b9=0;
    b10=0;
  }
   if(b9!=1 && b10==1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/not.ogg"),
    );
    count2=count2+1;
  }
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
                  onPressed:(){
                    b1=1;
                    AssetsAudioPlayer.newPlayer().open(
                      Audio("assets/touch2.ogg"),
                    );
                  },
                  child: Image.asset("images/2.JPG",
                    height: 60,
                    width: 66,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed:(){
                    b4=1;
                    function2();
                    one();
                    one1();

                  },
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
                  onPressed:(){
                    b3=1;
                    AssetsAudioPlayer.newPlayer().open(
                      Audio("assets/touch4.ogg"),
                    );
                  },
                  child: Image.asset("images/4.JPG",
                    height: 60,
                    width: 66,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed:(){
                    b10=1;
                    function5();
                    one();
                    one1();
                  },
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
                  onPressed:(){
                    b5=1;
                    AssetsAudioPlayer.newPlayer().open(
                      Audio("assets/touch5.ogg"),
                    );
                  },
                  child: Image.asset("images/5.png",
                    height: 60,
                    width: 66,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed:(){
                    b8=1;
                    function4();
                    one();
                    one1();

                  },
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
                  onPressed:(){
                    b7=1;
                    AssetsAudioPlayer.newPlayer().open(
                      Audio("assets/touch1.ogg"),
                    );
                  },
                  child: Image.asset("images/1.JPG",
                    height: 60,
                    width: 66,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed:(){
                    b6=1;
                    function3();
                    one();
                    one1();
                  },
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
                  onPressed:(){
                    b9=1;
                    AssetsAudioPlayer.newPlayer().open(
                      Audio("assets/touch3.ogg"),
                    );
                  },
                  child: Image.asset("images/3.png",
                    height: 60,
                    width: 66,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed:(){
                    b2=1;
                    function1();
                    one();
                    one1();
                  },
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
class send extends StatefulWidget {
  const send({Key? key}) : super(key: key);

  @override
  State<send> createState() => _sendState();
}

class _sendState extends State<send> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text("kaka"),
    );
  }
}

