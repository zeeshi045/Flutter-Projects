import 'package:flutter/material.dart';
import 'package:guessnumber_final/showresult.dart';
import 'dart:math';



int num1 = 0;
int num2 = 0;
int num3 = 0;
int num4 = 0;
int var1 = 0;
int var2 = 0;
int var3 = 0;
int var4 = 0;
int num5 = 0;
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
          title: Text("GOOD"),
          content: Text(" Right Answer "),
          actions: [
            TextButton(
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
          title: Text("OH NO!! Chance over"),
          content: Row(
            children: [
              Text("Genrate rendom number again"),
            ],
          ),
          actions: [
            TextButton(
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
          title: Text("Alert"),
          content: Row(
            children: [
              Text("PLESE Genrate Random number first"),
            ],
          ),
          actions: [
            TextButton(
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
          title: Text("OH no!"),
          content: Text(" Wrong Guess "),
          actions: [
            TextButton(
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
        backgroundColor: Colors.deepPurple,
        title: Text('Guess Number',),
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
    num1 = random.nextInt(100) + 100;
    print(num1);
    Random random2 = new Random();
    num2 = random2.nextInt(100) + 100;
    print(num2);
    Random random3 = new Random();
    num3 = random3.nextInt(100) + 100;
    print(num3);
    Random random4 = new Random();
    num4 = random4.nextInt(100) + 100;
    print(num4);
    Random random5 = new Random();
    num5 = random5.nextInt(4) + 1;
    print(num4);
    setState(() {
    chance = 2;
    });
    check = true;

    if (num5 == 1) {
    setState(() {
    var1 = num2;
    var2 = num4;
    var3 = num1;
    var4 = num3;
    });
    }
    if (num5 == 2) {
    setState(() {
    var1 = num4;
    var2 = num2;
    var3 = num3;
    var4 = num1;
    });
    }
    if (num5 == 4) {
    setState(() {
    var1 = num1;
    var2 = num2;
    var3 = num4;
    var4 = num3;
    });
    }
    if (num5 == 3) {
    setState(() {
    var1 = num4;
    var2 = num1;
    var3 = num2;
    var4 = num3;
    });
    };
            }, child: Text('Gernate Number',style: TextStyle(
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

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Visibility(
                  visible:_visible ,
                  child: TextButton(onPressed: (){
                    if (check == true) {
                      if (chance > 0) {
                        if (var1 == num1) {
                          correct++;
                          correctdialog();
                          setState(() {
                            trying++;
                            check = false;
                            results.add("Try $trying  Right   $num1");
                            num1 = 0;
                            num2 = 0;
                            num3 = 0;
                            num4 = 0;
                            var1 = 0;
                            var2 = 0;
                            var3 = 0;
                            var4 = 0;
                            num5 = 0;
                            chance = 2;
                          });
                        } else if (var1 != num1 && chance == 2) {
                          setState(() {
                            chance--;
                          });
                          wrongdialog();
                        } else if (chance == 1 && var1 != num1) {
                          setState(() {
                            trying++;
                            chance--;
                          });

                          results.add("Try $trying  Wrong   $num1");
                          wrongdialog();
                        }
                      } else {
                        chanceoverdialog();
                      }
                    } else {
                      checking();
                    }
                  }, child:Text('$var1',style: TextStyle(color: Colors.white),),
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
                        if (var2 == num1) {
                          correct++;
                          correctdialog();
                          setState(() {
                            trying++;
                            check = false;
                            results.add("Try $trying  Right   $num1");
                            num1 = 0;
                            num2 = 0;
                            num3 = 0;
                            num4 = 0;
                            var1 = 0;
                            var2 = 0;
                            var3 = 0;
                            var4 = 0;
                            num5 = 0;
                            chance = 2;
                          });
                        } else if (var2 != num1 && chance == 2) {
                          setState(() {
                            chance--;
                          });
                          wrongdialog();
                        } else if (chance == 1 && var2 != num1) {
                          setState(() {
                            trying++;
                            chance--;
                          });
                          results.add("Try $trying  Wrong   $num1");
                          wrongdialog();
                        }
                      } else {
                        chanceoverdialog();
                      }
                    } else {
                      checking();
                    }
                  }, child:Text('$var2',style: TextStyle(color: Colors.white),),
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
                        if (var3 == num1) {
                          correct++;
                          correctdialog();
                          setState(() {
                            trying++;
                            check = false;
                            results.add("Try $trying  Right   $num1");
                            num1 = 0;
                            num2 = 0;
                            num3 = 0;
                            num4 = 0;
                            var1 = 0;
                            var2 = 0;
                            var3 = 0;
                            var4 = 0;
                            num5 = 0;
                            chance = 2;
                          });
                        } else if (var3 != num1 && chance == 2) {
                          setState(() {
                            chance--;
                          });
                          wrongdialog();
                        } else if (chance == 1 && var3 != num1) {
                          setState(() {
                            trying++;
                            chance--;
                          });
                          results.add("Try $trying  Wrong   $num1");
                          wrongdialog();
                        }
                      } else {
                        chanceoverdialog();
                      }
                    } else {
                      checking();
                    }
                  }, child:Text('$var3',style: TextStyle(color: Colors.white),),
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
                        if (var4 == num1) {
                          correct++;
                          correctdialog();
                          setState(() {
                            trying++;
                            check = false;
                            results.add("Try $trying  Right   $num4");
                            num1 = 0;
                            num2 = 0;
                            num3 = 0;
                            num4 = 0;
                            var1 = 0;
                            var2 = 0;
                            var3 = 0;
                            var4 = 0;
                            num5 = 0;
                            chance = 2;
                          });
                        } else if (var4 != num1 && chance == 2) {
                          setState(() {
                            chance--;
                          });
                          wrongdialog();
                        } else if (chance == 1 && var4 != num1) {
                          setState(() {
                            trying++;
                            chance--;
                          });
                          results.add("Try $trying  Wrong   $num1");
                          wrongdialog();
                        }
                      } else {
                        chanceoverdialog();
                      }
                    } else {
                      checking();
                    }
                  }, child:Text('$var4',style: TextStyle(color: Colors.white),),
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
                TextButton(onPressed: (){}, child: Text('Retry',style: TextStyle(
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
