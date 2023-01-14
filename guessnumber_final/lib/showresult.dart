import 'package:flutter/material.dart';
import 'package:guessnumber_final/result.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:guessnumber_final/s2.dart';
import 'package:guessnumber_final/services/database.dart';
import 'package:guessnumber_final/showallrec.dart';
final dbHelper = DatabaseHelper();
int wrong=0;
class showres extends StatefulWidget {
  const showres({Key? key}) : super(key: key);

  @override
  State<showres> createState() => _showresState();
}

class _showresState extends State<showres> {

  User? current = FirebaseAuth.instance.currentUser;
  bool a = false;
  void showdia() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Message"),
          content: Row(
            children: [
              Text("Save Successfully"),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Show_Result and Save',style: TextStyle(
            fontSize: 25,
        ),),
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
              showdia();
          FirebaseFirestore.instance
              .collection("guess")
              .doc(current?.uid)
              .collection('results')
              .add({
            "show": results,
            "title":
            '$correct Tries  Right out of $trying',
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
        TextButton(onPressed: () async{
          showdia();
          Map<String, dynamic> row = {
            DatabaseHelper.columnUid: uid,
            DatabaseHelper.columnCorrect: correct,
            DatabaseHelper.columnWrong: wrong=trying-correct,
            DatabaseHelper.columnTotal: trying,
          };
          final id = await dbHelper.insert(row);
          debugPrint('inserted row id: $id');
setState(() {
  uid=FirebaseAuth.instance.currentUser?.uid;
});
        }, child: Text('Add Data in SqlFilte',style: TextStyle(
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
