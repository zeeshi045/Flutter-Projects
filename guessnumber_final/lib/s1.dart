import 'package:flutter/material.dart';
import 'package:guessnumber_final/result.dart';
import 'package:guessnumber_final/s2.dart';
import 'package:guessnumber_final/showallrec.dart';
class screen1 extends StatefulWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurple,
        title: Text('Guess Number',style:TextStyle(color:Colors.white,fontSize: 25,)),
        centerTitle: true,
      ),
      body:Container(
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
SizedBox(height: 50,),
        Container(
          width: 300,
          height: 500,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/gbm.gif"),
                fit: BoxFit.cover),
          ),
        ),

SizedBox(height: 50,),

              Row(

                children: [

                  ElevatedButton(
                    child: CircleAvatar(
                      radius: 130,
                      backgroundColor: Colors.transparent,

                      child: ClipOval(
                        child: Image.asset("images/pl.png",
                        ),
                      ),
                    ),
                    onPressed: () { Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => screen2()),
                    );},
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 100),
                      shape: const CircleBorder(),
                      backgroundColor: Colors.deepPurple,
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    child: CircleAvatar(
                      radius: 130,
                      backgroundColor: Colors.transparent,

                      child: ClipOval(
                        child: Image.asset("images/res.jpeg",

                        ),


                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ShowAllRecord()),
                      );},
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 100),
                      shape: const CircleBorder(),
                      backgroundColor: Colors.deepPurple,
                    ),
                  ),
                ],
              ),


              SizedBox(
                height: 20,
              ),

            ],
          ),

        ),



    );
  }
}

