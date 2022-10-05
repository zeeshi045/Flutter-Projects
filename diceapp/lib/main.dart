import 'package:flutter/material.dart';
import 'dart:math';
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
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dice App"),
        ),
        body:dice(),


      ),
    );
  }
}
class dice extends StatefulWidget {
  const dice({Key? key}) : super(key: key);

  @override
  State<dice> createState() => _diceState();
}
int num = 2;
int num2 = 3;
int num3 = 1;
int num4 = 5;
int s1=0,s2=0,s3=0,s4=0;
int allow=10;
int total=0,win=0,winner=0;
int count1=0,count2=0,count3=0,count4=0;
int p1=1,p2=2,p3=3,p4=4;

class _diceState extends State<dice> {
  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,

          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [

          Expanded(
          child: Text(
          'Zeeshan',
          textDirection: TextDirection.ltr,
          style: TextStyle(
          fontSize:18,
          color: Colors.black87,
    ),

    ),
    ),
    Expanded(
      child: Text(
      'Hadier1',
      textDirection: TextDirection.ltr,
      style: TextStyle(
      fontSize:18,
      color: Colors.black87,
      ),
      ),


    ),
    Expanded(
    child: Text(
    'Junaid',
    textDirection: TextDirection.ltr,
    style: TextStyle(
    fontSize: 18,
    color: Colors.black87,
    ),
    ),

    ),
    Expanded(child:Text(
    'Nouman',
    textDirection: TextDirection.ltr,
    style: TextStyle(
    fontSize: 18,
    color: Colors.black87,
    ),
    ),
    ),
    ],
    ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Expanded(
                  child: Text(
                    'Clicks :$s1',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize:18,
                      color: Colors.black87,
                    ),

                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left:0),
                    child: Text(
                      'Clicks :$s1',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize:18,
                        color: Colors.black87,
                      ),
                    ),
                  ),

                ),
                Expanded(
                  child: Text(
                    'Clicks :$s1',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize:18,
                      color: Colors.black87,
                    ),
                  ),

                ),
                Expanded(child:Text(
                  'Clicks :$s1',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize:18,
                    color: Colors.black87,
                  ),
                ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Expanded(
                  child: Text(
                    'Clicks :$s1',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize:18,
                      color: Colors.black87,
                    ),

                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left:0),
                    child: Text(
                      'Clicks :$s1',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize:18,
                        color: Colors.black87,
                      ),
                    ),
                  ),

                ),
                Expanded(
                  child: Text(
                    'Clicks :$s1',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize:18,
                      color: Colors.black87,
                    ),
                  ),

                ),
                Expanded(child:Text(
                  'Clicks :$s1',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize:18,
                    color: Colors.black87,
                  ),
                ),
                ),
              ],
            ),
Row(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Expanded(child:TextButton(
      child: Image.asset("images/dice$num.png"),
      onPressed: () {
            setState(() {
              if(count1<10){
                if(p1==1){
                  num = Random().nextInt(6) + 1;
                  s1=s1+num;
                  total=total+num;
                  if(num!=6){
                    count1=count1+1;
                  }

                }
              };
              if(s1>s2 && s1>s3 && s1>s4){
                winner=s1;
                win=1;

              }
              else if(s2>s1 && s2>s3 && s2>s4){
                winner=s2;
                win=2;
              }
              else if(s3>s1 && s3>s2 && s3>s4){
                winner=s3;
                win=3;
              }
              else{
                winner=s4;
                win=4;
              };
              if(allow>0){
                allow=allow-1;
              };
              if(count1==10){
                AlertDialog alert = AlertDialog(
                  title: Text("your turn is end"),
                  content: Text("dice 2 play."),
                  actions: [
                    TextButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: Text('oky'),
                    ),
                  ],
                );
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return alert;
                  },
                );
              }
              if(count1==10 && count2==10 && count3==10 && count4==10){
                AlertDialog alert = AlertDialog(
                  title: Text('Winner is dice $win'),
                  content: Text('Score $winner'),
                  actions: [
                    TextButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: Text('oky'),
                    ),
                  ],
                );
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return alert;
                  },
                );
              }

            });

            print(num);
          },
        ),
    ),
    Expanded(child:TextButton(
      child: Image.asset("images/dice$num2.png"),
      onPressed: () {
        setState(() {
          if(count2<10){
            if(p2==2){
              num = Random().nextInt(6) + 1;
              s2=s2+num;
              total=total+num;
              if(num!=6){
                count2=count2+1;
              }

            }
          };
          if(s1>s2 && s1>s3 && s1>s4){
            winner=s1;
            win=1;

          }
          else if(s2>s1 && s2>s3 && s2>s4){
            winner=s2;
            win=2;
          }
          else if(s3>s1 && s3>s2 && s3>s4){
            winner=s3;
            win=3;
          }
          else{
            winner=s4;
            win=4;
          };
          if(allow>0){
            allow=allow-1;
          };
          if(count1==10){
            AlertDialog alert = AlertDialog(
              title: Text("your turn is end"),
              content: Text("dice 2 play."),
              actions: [
                TextButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Text('oky'),
                ),
              ],
            );
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return alert;
              },
            );
          }
          if(count1==10 && count2==10 && count3==10 && count4==10){
            AlertDialog alert = AlertDialog(
              title: Text('Winner is dice $win'),
              content: Text('Score $winner'),
              actions: [
                TextButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Text('oky'),
                ),
              ],
            );
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return alert;
              },
            );
          }

        });

        print(num);
      },
    ),
    ),
    Expanded(child:TextButton(
      child: Image.asset("images/dice$num.png"),
      onPressed: () {
        setState(() {
          if(count1<10){
            if(p1==1){
              num = Random().nextInt(6) + 1;
              s1=s1+num;
              total=total+num;
              if(num!=6){
                count1=count1+1;
              }

            }
          };
          if(s1>s2 && s1>s3 && s1>s4){
            winner=s1;
            win=1;

          }
          else if(s2>s1 && s2>s3 && s2>s4){
            winner=s2;
            win=2;
          }
          else if(s3>s1 && s3>s2 && s3>s4){
            winner=s3;
            win=3;
          }
          else{
            winner=s4;
            win=4;
          };
          if(allow>0){
            allow=allow-1;
          };
          if(count1==10){
            AlertDialog alert = AlertDialog(
              title: Text("your turn is end"),
              content: Text("dice 2 play."),
              actions: [
                TextButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Text('oky'),
                ),
              ],
            );
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return alert;
              },
            );
          }
          if(count1==10 && count2==10 && count3==10 && count4==10){
            AlertDialog alert = AlertDialog(
              title: Text('Winner is dice $win'),
              content: Text('Score $winner'),
              actions: [
                TextButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Text('oky'),
                ),
              ],
            );
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return alert;
              },
            );
          }

        });

        print(num);
      },
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

