import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guessnumber_final/result.dart';
import 'package:guessnumber_final/s2.dart';
import 'package:guessnumber_final/services/database.dart';
import 'package:guessnumber_final/showallrec.dart';
import 'package:get/get.dart';
import 'login.dart';
import 'offline.dart';
var user = FirebaseAuth.instance.currentUser?.uid;
class screen1 extends StatefulWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  State<screen1> createState() => _screen1State();
}
FirebaseAuth _auth = FirebaseAuth.instance;
class _screen1State extends State<screen1> {
  Future<void> signOut() async {
    await _auth.signOut();
    Get.offAll(LogIn());
  }
  void sshow(){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("All Records Show"),
          content: Text(""),
          actions: [
            TextButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple, // Background color
                onPrimary: Colors.white,
                // Text Color (Foreground color)
              ),
              child: Text("Offline Records"),
              onPressed: () {
setState(() {
  uid=FirebaseAuth.instance.currentUser?.uid;
});
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => offline()),
                );
              },
            ),
            TextButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple, // Background color
                onPrimary: Colors.white,
                // Text Color (Foreground color)
              ),
              child: Text("Online Records"),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShowAllRecord()),
                );

              },

            ),
          ],
        );
      },
    );

  }
  void logout(){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Logout"),
          content: Text("Are you sure you want to logout?"),
          actions: [
            TextButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple, // Background color
                onPrimary: Colors.white,
                // Text Color (Foreground color)
              ),
              child: Text("Cancel"),
              onPressed: () {

                Navigator.pop(context);

              },
            ),
            TextButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple, // Background color
                onPrimary: Colors.white,
                // Text Color (Foreground color)
              ),
              child: Text("Logout"),
              onPressed:() {
                FirebaseAuth.instance.signOut();
                Get.to(LogIn());
                Navigator.pop(context);
              },

            ),
          ],
        );
      },
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurple,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Guess Number',style:TextStyle(color:Colors.white,fontSize: 25,)),
Spacer(),
         TextButton(onPressed: (){
           logout();
         }, child: Icon(
           Icons.logout,
           color: Colors.white,
         ))
          ],
        ),
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        child: Container(
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
SizedBox(height: 30,),
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
                      );

                          setState(() {
                            uid=FirebaseAuth.instance.currentUser?.uid;
                        });
                        },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(100, 100),
                        shape: const CircleBorder(),
                        backgroundColor: Colors.deepPurple,
                      ),
                    ),
                    Spacer(),
                    ElevatedButton(
                      child: CircleAvatar(
                        radius: 150,

                        backgroundColor: Colors.transparent,

                        child: ClipOval(

                          child: Image.asset("images/ddd.jpg",

                          ),


                        ),
                      ),
                      onPressed: () {
                        sshow();
                        },
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
      ),



    );
  }
}

