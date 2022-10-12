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
// one(){
//   if(count1==3) {
//      k();
//      Get.to(send(),
//        duration:Duration(seconds: 3),);
//
//   }
// }
k(){
  count1=0;
  AssetsAudioPlayer.newPlayer().open(
    Audio("assets/win.wav"),
  );
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
                    one1();
                    if(count1==5){
                      k();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const send()),
                      );
                    }

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
                    one1();
                    if(count1==5){
                      k();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const send()),
                      );
                    }
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
                    one1();
                    if(count1==5){
                      k();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const send()),
                      );
                    }

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
                    one1();
                    if(count1==5){
                      k();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const send()),
                      );
                    }
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
                    one1();
                    if(count1==5){
                      k();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const send()),
                      );
                    }
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
int b11=0;
int b12=0;
int b13=0;
int b14=0;
int b15=0;
int b16=0;
int b17=0;
int b18=0;
int b19=0;
int b110=0;
int count11=0;
int count12=0;
int m=0;
int m1=0;
int m2=0;
int m3=0;
int m4=0;
int m5=0;
int m6=0;
int m7=0;
int m8=0;
int m9=0;
lvl2f1(){
  if(b11==1 && b12==1) {
    count11=count11+1;
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.ogg"),
    );
    b11=0;
    b12=0;
  }
  else if(b11!=1 && b12==1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/not.ogg"),
    );
    count12=count12+1;
  }
}
lvl2f2(){
  if(b13==1 && b14==1) {
    count11=count11+1;
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.ogg"),
    );
    b13=0;
    b14=0;
  }
  else if(b13!=1 && b14==1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/not.ogg"),
    );
    count12=count12+1;
  }
}
lvl2f3(){
  if(b15==1 && b16==1) {
    count11=count11+1;
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.ogg"),
    );
    b15=0;
    b16=0;
  }
  else if(b15!=1 && b16==1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/not.ogg"),
    );
    count12=count12+1;
  }
}
lvl2f4(){
  if(b17==1 && b18==1) {
    count11=count11+1;
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.ogg"),
    );
    b17=0;
    b18=0;
  }
  else if(b17!=1 && b18==1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/not.ogg"),
    );
    count12=count12+1;
  }
}
lvl2f5(){
  if(b19==1 && b110==1) {
    count11=count11+1;
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.ogg"),
    );
    b19=0;
    b110=0;
  }
  else if(b19!=1 && b110==1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/not.ogg"),
    );
    count12=count12+1;
  }
}
lvl2f6(){
  if(m==1 && m1==1) {
    count11=count11+1;
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.ogg"),
    );
    m1=0;
    m=0;
  }
  else if(m!=1 && m1==1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/not.ogg"),
    );
    count12=count12+1;
  }
}
lvl2f7(){
  if(m2==1 && m3==1) {
    count11=count11+1;
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.ogg"),
    );
    m3=0;
    m2=0;
  }
  else if(m2!=1 && m3==1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/not.ogg"),
    );
    count12=count12+1;
  }
}
lvl2f8(){
  if(m4==1 && m5==1) {
    count11=count11+1;
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.ogg"),
    );
    m4=0;
    m5=0;
  }
  else if(b4!=1 && m5==1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/not.ogg"),
    );
    count12=count12+1;
  }
}
lvl2f9(){
  if(m6==1 && m7==1) {
    count11=count11+1;
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.ogg"),
    );
    m6=0;
    m7=0;
  }
  else if(m6!=1 && m7==1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/not.ogg"),
    );
    count12=count12+1;
  }
}
lvl2f10(){
  if(m8==1 && m9==1) {
    count11=count11+1;
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.ogg"),
    );
    m8=0;
    m9=0;
  }
  else if(m8!=1 && m9==1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/not.ogg"),
    );
    count12=count12+1;
  }
}
class _sendState extends State<send> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:Text('Matching game'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children:[
              Text('Level 2',
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
                    },
                    child: Image.asset("images/2.JPG",
                      height: 60,
                      width: 66,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed:(){


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
              Row(
                children: [
                  TextButton(
                    onPressed:(){
                    },
                    child: Image.asset("images/2.JPG",
                      height: 60,
                      width: 66,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed:(){


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
              Row(
                children: [
                  TextButton(
                    onPressed:(){
                    },
                    child: Image.asset("images/2.JPG",
                      height: 60,
                      width: 66,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed:(){


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
              Row(
                children: [
                  TextButton(
                    onPressed:(){
                    },
                    child: Image.asset("images/2.JPG",
                      height: 60,
                      width: 66,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed:(){


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
              Row(
                children: [
                  TextButton(
                    onPressed:(){
                    },
                    child: Image.asset("images/2.JPG",
                      height: 60,
                      width: 66,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed:(){


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
              Row(
                children: [
                  TextButton(
                    onPressed:(){
                    },
                    child: Image.asset("images/2.JPG",
                      height: 60,
                      width: 66,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed:(){


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
              Row(
                children: [
                  TextButton(
                    onPressed:(){
                    },
                    child: Image.asset("images/2.JPG",
                      height: 60,
                      width: 66,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed:(){


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
              Row(
                children: [
                  TextButton(
                    onPressed:(){
                    },
                    child: Image.asset("images/2.JPG",
                      height: 60,
                      width: 66,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed:(){


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
              Row(
                children: [
                  TextButton(
                    onPressed:(){
                    },
                    child: Image.asset("images/2.JPG",
                      height: 60,
                      width: 66,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed:(){


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
              Row(
                children: [
                  TextButton(
                    onPressed:(){
                    },
                    child: Image.asset("images/2.JPG",
                      height: 60,
                      width: 66,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed:(){


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

            ],
          ),
        ),
      ),
    );
  }
}

