import 'dart:async';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
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
int count1=0,count2=0;
truef(){
  if(count2==2){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/loser.ogg"),
    );
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
  else if(b1!=1 && b2!=1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/not.ogg"),

    );
    count2++;

  }
}
void function2(){
  setState(() {
  if(b3==1 && b4==1) {
    count1=count1+1;
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.ogg"),
    );
    b3=0;
    b4=0;
  }
  else if(b3!=1 && b4!=1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/not.ogg"),
    );
    count2++;

  }
  });
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
  else if(b5!=1 && b6!=1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/not.ogg"),
    );
    count2++;

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
  else if(b7!=1 && b8!=1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/not.ogg"),
    );
    count2++;
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
  else if(b9!=1 && b10!=1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/not.ogg"),
    );
    count2++;

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
                    AssetsAudioPlayer.newPlayer().open(
                      Audio("assets/not.ogg"),
                    );
                    function2();
                    truef();
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
                    AssetsAudioPlayer.newPlayer().open(
                      Audio("assets/not.ogg"),
                    );
                    function5();
                    truef();
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
                    AssetsAudioPlayer.newPlayer().open(
                      Audio("assets/not.ogg"),
                    );
                    function4();
                    truef();
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
                    AssetsAudioPlayer.newPlayer().open(
                      Audio("assets/not.ogg"),
                    );
                    function3();
                    truef();
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
                    AssetsAudioPlayer.newPlayer().open(
                      Audio("assets/not.ogg"),
                    );
                    function1();
                    truef();
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

