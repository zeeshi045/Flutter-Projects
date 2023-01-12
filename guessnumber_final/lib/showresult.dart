import 'package:flutter/material.dart';
import 'package:guessnumber_final/result.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:guessnumber_final/s2.dart';
import 'package:guessnumber_final/showallrec.dart';
class showres extends StatefulWidget {
  const showres({Key? key}) : super(key: key);

  @override
  State<showres> createState() => _showresState();
}

class _showresState extends State<showres> {
  User? current = FirebaseAuth.instance.currentUser;
  bool a = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show_Result and Save'),
        backgroundColor: Colors.deepPurple,
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
            ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Center(child: TextButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => result()),
              );
            }, child: Text('$correct Tries  Right out of $trying',style: TextStyle(
                color: Colors.white,
              fontSize: 25,
            ),),
              style: ElevatedButton.styleFrom(

                backgroundColor: Colors.deepPurple,
              ),
            )
            ),
            SizedBox(height: 200,),
            TextButton(onPressed: (){
          FirebaseFirestore.instance
              .collection("guess")
              .doc(current?.uid)
              .collection('results')
              .add({
            "show": results,
            "title":
            '$correct Tries  Right out of $trying',
          });
          setState(() {
            a=true;
          });
        }, child: Text('Add Data in Firebase',style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),),
          style: ElevatedButton.styleFrom(

            backgroundColor: Colors.deepPurple,
          ),
        ),
            SizedBox(height: 20,),
        TextButton(onPressed: (){}, child: Text('Add Data in SqlFilte',style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),),
          style: ElevatedButton.styleFrom(

            backgroundColor: Colors.deepPurple,
          ),
        ),
          ],
        ),
      ),
    );
  }
}
