import 'package:flutter/material.dart';
import 'dart:math';
import 'package:assets_audio_player/assets_audio_player.dart';
void main() {
  runApp(const guess_game());
}
class guess_game extends StatefulWidget {
  const guess_game({Key? key}) : super(key: key);
  @override
  State<guess_game> createState() => _guess_gameState();
}
class _guess_gameState extends State<guess_game> {
  @override
  int x=0;
  int n1=0;
  int n2=0;
  int n3=0;
  int n4=0;
  int b1=0;
  int b2=0;
  int b3=0;
  Color r=Colors.red;
  Color w=Colors.white;
  Color g=Colors.green;
  Color r2=Colors.red;
  Color w2=Colors.white;
  Color g2=Colors.green;
  Color r3=Colors.red;
  Color w3=Colors.white;
  Color g3=Colors.green;

  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink,
          title:Text('Guess_Number'),
        ),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.amber,
                    Colors.white,
                  ],
                )
            ),
            child:Center(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text('Range is (1-25)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),),
                  SizedBox(height: 50,),
                  TextButton(
                    onPressed: (){
                      Random random = new Random();
                      n1 = random.nextInt(25) + 1;
                      print(n1);
                      Random random2 = new Random();
                      n2 = random2.nextInt(25) + 1;
                      print(n2);
                      Random random3 = new Random();
                      n3 = random3.nextInt(25) + 1;
                      print(n3);
                      Random priority = new Random();
                      n4 = priority.nextInt(3) + 1;
                      print(n4);
                      x=1;
                      if(n4==1){
                        setState(() {
                          b1=n2;
                          b2=n3;
                          b3=n1;
                        });
                      }
                      if(n4==2){
                        setState(() {
                          b1=n1;
                          b2=n2;
                          b3=n3;
                        });
                      }
                      if(n4==3) {
                        setState(() {
                          b1 = n3;
                          b2 = n1;
                          b3 = n2;
                        });
                      };
                    },
                    child: Text('Press Me',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.black,
                        backgroundColor: Colors.blueAccent,
                        shape: StadiumBorder(),
                        padding: EdgeInsets.symmetric(horizontal: 35,vertical: 20)),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    color: w,
                    child: TextButton(
                      onPressed: () {
                        if (x == 1) {
                          if (b1 == n1){
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/correct.ogg"),
                            );
                            setState(() {
                              w = g;
                            });
                            print("correct");
                          }
                          else {
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/not.ogg"),
                            );
                            setState(() {
                              w = r;
                              if (b2 == n1) {
                                setState(() {
                                  w2 = g2;
                                });
                              }
                              else if (b3 == n1) {
                                setState(() {
                                  w3 = g3;
                                });
                              }
                            });
                            print("wrong");
                          }
                        }

                      },
                      child: Text("a)      $b1",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    color: w2,
                    child: TextButton(
                      onPressed: (){
                        if(x==1){
                          if (b2 == n1) {
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/correct.ogg"),
                            );
                            setState(() {
                              w2 = g2;
                            });
                            print("correct");
                          }
                          else {
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/not.ogg"),
                            );
                            setState(() {
                              w2 = r2;
                              if (b3 == n1) {
                                setState(() {
                                  w3 = g3;
                                });
                              }
                              else if (b1 == n1) {
                                setState(() {
                                  w = g;
                                });
                              }
                            });

                            print("wrong");
                          }
                        }

                      },
                      child: Text("b)      $b2", style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    color: w3,
                    child: TextButton(
                      onPressed: (){
                        if(x==1) {
                          if (b3 == n1) {
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/correct.ogg"),
                            );
                            setState(() {
                              w3 = g3;
                            });
                            print("correct");
                          }
                          else {
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/not.ogg"),
                            );
                            setState(() {
                              w3 = r3;
                              if (b2 == n1) {
                                setState(() {
                                  w2 = g2;
                                });
                              }
                              else if (b1 == n1) {
                                setState(() {
                                  w = g;
                                });
                              }
                            });
                            print("wrong");

                          }
                        }
                      },
                      child: Text("c)      $b3",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),),
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextButton(onPressed: (){
                    setState(() {
                      x=0;
                      n1=0;
                      n2=0;
                      n3=0;
                      n4=0;
                      b1=0;
                      b2=0;
                      b3=0;
                      w=Colors.white;
                      w2=Colors.white;
                      w3=Colors.white;
                    });
                  }, child: Text('Reset',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.green,
                        backgroundColor: Colors.blue,
                        shape: StadiumBorder(),
                        padding: EdgeInsets.symmetric(horizontal: 35,vertical: 20)),

                  ),
                ],
              ),
            )
        ),
      ),
    );

  }
}

