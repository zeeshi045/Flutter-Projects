import 'package:flutter/material.dart';

import 'dart:math';

import 'package:guessnumber_final/showresult.dart';



int n1 = 0;
int n2 = 0;
int n3 = 0;
int n4 = 0;
int v1 = 0;
int v2 = 0;
int v3 = 0;
int v4 = 0;
int n5 = 0;
int chance = 2;
int trying = 0;
int correct = 0;
bool check = false;
List<String> results = [];
class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  void correctdialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Nice"),
          content: Text(" Right Answer "),
          actions: [
            TextButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple, // Background color
                onPrimary: Colors.white,
                // Text Color (Foreground color)
              ),
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  void chanceoverdialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Chance over!"),
          content: Row(
            children: [
              Text("Press two time generate number button"),
            ],
          ),
          actions: [
            TextButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple, // Background color
                onPrimary: Colors.white,
                // Text Color (Foreground color)
              ),
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void checking() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Message!"),
          content: Row(
            children: [
              Text("Plz press two time generate number"),
            ],
          ),
          actions: [
            TextButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple, // Background color
                onPrimary: Colors.white,
                // Text Color (Foreground color)
              ),
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void wrongdialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("UFFF"),
          content: Text(" Wrong "),
          actions: [
            TextButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple, // Background color
                onPrimary: Colors.white,
                // Text Color (Foreground color)
              ),
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  bool _visible=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: Text('Play Game',style: TextStyle(
          fontSize: 25,
        ),),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.white,
                Colors.black87,
              ],
            )
        ),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Center(child: TextButton(onPressed: (){
              setState(() { _visible=!_visible; });
    Random random = new Random();
    n1 = random.nextInt(100) + 100;
    print(n1);
    Random random2 = new Random();
    n2 = random2.nextInt(100) + 100;
    print(n2);
    Random random3 = new Random();
    n3 = random3.nextInt(100) + 100;
    print(n3);
    Random random4 = new Random();
    n4 = random4.nextInt(100) + 100;
    print(n4);
    Random random5 = new Random();
    n5 = random5.nextInt(4) + 1;
    print(n4);
    setState(() {
    chance = 2;
    });
    check = true;

    if (n5 == 1) {
    setState(() {
    v1 = n2;
    v2 = n4;
    v3 = n1;
    v4 = n3;
    });
    }
    if (n5 == 2) {
    setState(() {
    v1 = n4;
    v2 = n2;
    v3 = n3;
    v4 = n1;
    });
    }
    if (n5 == 4) {
    setState(() {
    v1 = n1;
    v2 = n2;
    v3 = n4;
    v4 = n3;
    });
    }
    if (n5 == 3) {
    setState(() {
    v1 = n4;
    v2 = n1;
    v3 = n2;
    v4 = n3;
    });
    };
            }, child: Text('Generate Number',style: TextStyle(
              color: Colors.white
            ),),
              style: ElevatedButton.styleFrom(

                backgroundColor: Colors.deepPurple,
              ),

            ),
            ),
SizedBox(height: 10,),
            Text(
              'Range is 100 to 200',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text('Chances:  $chance',style: TextStyle(
                  fontSize: 15,
                ),)),
              ],
            ),
SizedBox(height: 150,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Visibility(
                  visible:_visible ,
                  child: TextButton(onPressed: (){
                    if (check == true) {
                      if (chance > 0) {
                        if (v1 == n1) {
                          correct++;
                          correctdialog();
                          setState(() {
                            trying++;
                            check = false;
                            results.add("Try $trying  Right   $n1");
                            n1 = 0;
                            n2 = 0;
                            n3 = 0;
                            n4 = 0;
                            v1 = 0;
                            v2 = 0;
                            v3 = 0;
                            v4 = 0;
                            n5 = 0;
                            chance = 2;
                          });
                        } else if (v1 != n1 && chance == 2) {
                          setState(() {
                            chance--;
                          });
                          wrongdialog();
                        } else if (chance == 1 && v1 != n1) {
                          setState(() {
                            trying++;
                            chance--;
                          });

                          results.add("Try $trying  Wrong   $n1");
                          wrongdialog();
                        }
                      } else {
                        chanceoverdialog();
                      }
                    } else {
                      checking();
                    }
                  }, child:Text('$v1',style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(

                      backgroundColor: Colors.deepPurple,
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Visibility(
                  visible:_visible ,
                  child: TextButton(onPressed: (){

                    if (check == true) {
                      if (chance > 0) {
                        if (v2 == n1) {
                          correct++;
                          correctdialog();
                          setState(() {
                            trying++;
                            check = false;
                            results.add("Try $trying  Right   $n1");
                            n1 = 0;
                            n2 = 0;
                            n3 = 0;
                            n4 = 0;
                            v1 = 0;
                            v2 = 0;
                            v3 = 0;
                            v4 = 0;
                            n5 = 0;
                            chance = 2;
                          });
                        } else if (v2 != n1 && chance == 2) {
                          setState(() {
                            chance--;
                          });
                          wrongdialog();
                        } else if (chance == 1 && v2 != n1) {
                          setState(() {
                            trying++;
                            chance--;
                          });
                          results.add("Try $trying  Wrong   $n1");
                          wrongdialog();
                        }
                      } else {
                        chanceoverdialog();
                      }
                    } else {
                      checking();
                    }
                  }, child:Text('$v2',style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(

                      backgroundColor: Colors.deepPurple,
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Visibility(
                  visible:_visible ,
                  child: TextButton(onPressed: (){
                    if (check == true) {
                      if (chance > 0) {
                        if (v3 == n1) {
                          correct++;
                          correctdialog();
                          setState(() {
                            trying++;
                            check = false;
                            results.add("Try $trying  Right   $n1");
                            n1 = 0;
                            n2 = 0;
                            n3 = 0;
                            n4 = 0;
                            v1 = 0;
                            v2 = 0;
                            v3 = 0;
                            v4 = 0;
                            n5 = 0;
                            chance = 2;
                          });
                        } else if (v3 != n1 && chance == 2) {
                          setState(() {
                            chance--;
                          });
                          wrongdialog();
                        } else if (chance == 1 && v3 != n1) {
                          setState(() {
                            trying++;
                            chance--;
                          });
                          results.add("Try $trying  Wrong   $n1");
                          wrongdialog();
                        }
                      } else {
                        chanceoverdialog();
                      }
                    } else {
                      checking();
                    }
                  }, child:Text('$v3',style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(

                      backgroundColor: Colors.deepPurple,
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Visibility(
                  visible:_visible ,
                  child: TextButton(onPressed: (){
                    if (check == true) {
                      if (chance > 0) {
                        if (v4 == n1) {
                          correct++;
                          correctdialog();
                          setState(() {
                            trying++;
                            check = false;
                            results.add("Try $trying  Right   $n4");
                            n1 = 0;
                            n2 = 0;
                            n3 = 0;
                            n4 = 0;
                            v1 = 0;
                            v2 = 0;
                            v3 = 0;
                            v4 = 0;
                            n5 = 0;
                            chance = 2;
                          });
                        } else if (v4 != n1 && chance == 2) {
                          setState(() {
                            chance--;
                          });
                          wrongdialog();
                        } else if (chance == 1 && v4 != n1) {
                          setState(() {
                            trying++;
                            chance--;
                          });
                          results.add("Try $trying  Wrong   $n1");
                          wrongdialog();
                        }
                      } else {
                        chanceoverdialog();
                      }
                    } else {
                      checking();
                    }
                  }, child:Text('$v4',style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(

                      backgroundColor: Colors.deepPurple,
                    ),
                  ),
                ),


              ],
            ),
SizedBox(height: 250,),
            Row(
              children: [
                TextButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => showres()),
                  );
                }, child: Text('Show Result',style: TextStyle(
                    color: Colors.white
                ),),
                  style: ElevatedButton.styleFrom(

                    backgroundColor: Colors.deepPurple,
                  ),

                ),
                Spacer(),
                TextButton(onPressed: (){
                  setState((){
                    results.clear();
                    n1 = 0;
                    n2 = 0;
                    n3 = 0;
                    n4 = 0;
                    v1 = 0;
                    v2 = 0;
                    v3 = 0;
                    v4 = 0;
                    n5 = 0;
                    chance = 2;
                    trying = 0;
                    correct = 0;
                    check = false;
                  });
                }, child: Text('Retry',style: TextStyle(
                    color: Colors.white
                ),),
                  style: ElevatedButton.styleFrom(

                    backgroundColor: Colors.deepPurple,
                  ),

                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
