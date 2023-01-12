import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ShowAllRecord extends StatefulWidget {
  const ShowAllRecord({Key? key}) : super(key: key);

  @override
  State<ShowAllRecord> createState() => _ShowAllRecordState();
}
class _ShowAllRecordState extends State<ShowAllRecord> {
  @override
  User? current = FirebaseAuth.instance.currentUser;
  List<dynamic> showlist = [];
  List<dynamic> title = [];
  getdata() async {
    await FirebaseFirestore.instance
        .collection("guess")
        .doc(current?.uid)
        .collection('results')
        .get()
        .then((value) {
      for (int i = 0; i < value.docs.length; i++)
        setState(() {
          showlist.add(value.docs[i].get('show'));
          title.add(value.docs[i].get('title'));
        });
    });
  }

  @override
  void initState() {
    super.initState();
    getdata();
    print(showlist);
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          title: Text("Previous Record",style: TextStyle(fontSize: 25),),
        ),
        body: ListView.builder(
          itemCount: showlist.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  child: Column(
                  children:[
            Text(
            title[index].toString(),
            style: TextStyle(color: Colors.white),
            ),
            for (int i = 0; i < showlist[index].length; i++)
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
            showlist[index][i].toString(),
            style: TextStyle(color: Colors.white),
            ),
            ),
            ],
            ),
            ),
            ),
            );
          },
        )
    );
  }
}
