import 'package:flutter/material.dart';
import 'dart:math';
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
  int num1=0;
  int num2=0;
  int num3=0;
  int bt1=0;
  int bt2=0;
  int bt3=0;
  int num4=0;
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
              title:Text('Guess_Number'),
            ),
          body: Container(
              child:Column(
                children: [
                  TextButton(
                    onPressed: (){
                      Random random = new Random();
                      num1 = random.nextInt(100) + 1;
                      print(num1);
                      Random random2 = new Random();
                      num2 = random2.nextInt(100) + 1;
                      print(num2);
                      Random random3 = new Random();
                      num3 = random3.nextInt(100) + 1;
                      print(num3);
                      Random priority = new Random();
                      num4 = priority.nextInt(3) + 1;
                      print(num4);
                      x=1;
                      if(num4==1){
                        setState(() {
                          bt1=num2;
                          bt2=num3;
                          bt3=num1;
                        });

                      }
                      if(num4==2){
                        setState(() {

                          bt1=num1;
                          bt2=num2;
                          bt3=num3;
                        });
                      }
                      if(num4==3) {
                        setState(() {
                          bt1 = num3;
                          bt2 = num1;
                          bt3 = num2;
                        });
                      };

                    },
                    child: Text("genrate random number"),
                  ),

                  TextButton(
                    onPressed: () {
                      if (x == 1) {
                        if (bt1 == num1) {
                          print("correct");
                        }
                        else
                          print("wrong");
                      }

                    },
                    child: Text("a)      $bt1"),
                  ),
                  TextButton(
                    onPressed: (){
                      if(x==1) {
                        if (bt2 == num1) {
                          print("correct");
                        }
                        else
                          print("wrong");
                      }

                    },
                    child: Text("b)      $bt2"),
                  ),
                  TextButton(
                    onPressed: (){
                      if(x==1) {
                        if (bt3 == num1) {
                          print("correct");
                        }
                        else
                          print("wrong");
                      }
                    },
                    child: Text("c)      $bt3"),
                  ),
                ],
              )
          ),
        )
    );

  }
}

