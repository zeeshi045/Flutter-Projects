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
int total=0;
var win ="";
int count1=0,count2=0,count3=0,count4=0;
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
                    'Clicks :$count1',
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
                      'Clicks :$count2',
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
                    'Clicks :$count3',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize:18,
                      color: Colors.black87,
                    ),
                  ),

                ),
                Expanded(child:Text(
                  'Clicks :$count4',
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
                    'Score:$s1',
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
                      'Score:$s2',
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
                    'Score:$s3',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize:18,
                      color: Colors.black87,
                    ),
                  ),

                ),
                Expanded(child:Text(
                  'Score:$s4',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize:18,
                    color: Colors.black87,
                  ),
                ),
                ),
              ],
            ),
SizedBox(height: 15,),
Row(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Expanded(child:TextButton(
      child: Image.asset("images/dice$num.png",
        color: Colors.blueGrey,
      ),
      onPressed: () {
            setState(() {
              if(count1<10){
                  num = Random().nextInt(6) + 1;
                  s1=s1+num;
                  total=total+num;
                  if(num!=6){
                    count1=count1+1;
                  }
              };
              if(s1>s2 && s1>s3 && s1>s4){
                total=s1;
                win="zeeshan";
              }
              else if(s2>s1 && s2>s3 && s2>s4){
                total=s2;
                win="Haider1";
              }
              else if(s3>s1 && s3>s2 && s3>s4){
                total=s3;
                win="junaid";
              }
              else{
                total=s4;
                win="Nouman";
              };
              if(allow>0){
                allow=allow-1;
              };
              if(count1==10){
                AlertDialog alert = AlertDialog(
                  title: Text("your turn is end"),
                  content: Text("Haider1 play."),
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
                  content: Text('Score $total'),
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
      child: Image.asset("images/dice$num2.png",
        color: Colors.blueGrey,),
      onPressed:count1==10? () {
        setState(() {
          if(count2<10){
              num2= Random().nextInt(6) + 1;
              s2=s2+num2;
              total=total+num2;
              if(num2!=6){
                count2=count2+1;
              }
          };
          if(s1>s2 && s1>s3 && s1>s4){
            total=s1;
            win="Zeeshan";
          }
          else if(s2>s1 && s2>s3 && s2>s4){
            total=s2;
            win="Haider";
          }
          else if(s3>s1 && s3>s2 && s3>s4){
            total=s3;
            win="junaid";
          }
          else{
            total=s4;
            win="nouman";
          };
          if(allow>0){
            allow=allow-1;
          };
          if(count2==10){
            AlertDialog alert = AlertDialog(
              title: Text("your turn is end"),
              content: Text("Junaid play."),
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
              content: Text('Score $total'),
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
      }:null,
    ),
    ),
    Expanded(child:TextButton(
      child: Image.asset("images/dice$num3.png",
        color: Colors.blueGrey,),
      onPressed:count1==10 && count2==10? () {
        setState(() {
          if(count3<10){
              num3 = Random().nextInt(6) + 1;
              s3=s3+num3;
              if(num3!=6){
                count3=count3+1;
              }
          };
          if(s1>s2 && s1>s3 && s1>s4){
            total=s1;
            win="zeeshan";

          }
          else if(s2>s1 && s2>s3 && s2>s4){
            total=s2;
            win="Haider1";
          }
          else if(s3>s1 && s3>s2 && s3>s4){
            total=s3;
            win="junaid";
          }
          else{
            total=s4;
            win="Nouman";
          };
          if(allow>0){
            allow=allow-1;
          };
          if(count3==10){
            AlertDialog alert = AlertDialog(
              title: Text("your turn is end"),
              content: Text("Nouman play."),
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
              content: Text('Score $total'),
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
      }:null,
    ),
    ),
    Expanded(child:TextButton(
      child: Image.asset("images/dice$num4.png",
        color: Colors.blueGrey,),
      onPressed:count1==10 && count2==10 && count3==10? () {
        setState(() {
          if(count4<10){
              num4 = Random().nextInt(6) + 1;
              s4=s4+num4;
              if(num4!=6){
                count4=count4+1;
              }
          };
          if(s1>s2 && s1>s3 && s1>s4){
            total=s1;
            win="zeeshan";

          }
          else if(s2>s1 && s2>s3 && s2>s4){
            total=s2;
            win="Haider1";
          }
          else if(s3>s1 && s3>s2 && s3>s4){
            total=s3;
            win="junaid";
          }
          else{
            total=s4;
            win="Nouman";
          };
          if(allow>0){
            allow=allow-1;
          };
          if(count4==10){
            AlertDialog alert = AlertDialog(
              title: Text("your turn is end"),
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
              content: Text('Score $total'),
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
      }:null,
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

