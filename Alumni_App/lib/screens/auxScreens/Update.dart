import 'package:alumni/screens/auxScreens/UsersList.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:alumni/modals.dart/universalVariables.dart';
class Update extends StatefulWidget {
  final String id;
  Update({Key key, this.id}) : super(key: key);


  // Updaing Student


  @override
  _UpdateState createState() => _UpdateState();
}
final _formKey = GlobalKey<FormState>();
class _UpdateState extends State<Update> {
  CollectionReference students =
  FirebaseFirestore.instance.collection('users');

  Future<void> updateUser(id, name,Number,tag,branch) {
    return students
        .doc(id)
        .update({'name': name, 'Number':Number, tag:'tag', 'branch':branch})
        .then((value) => print("User Updated"))
        .catchError((error) => print("Failed to update user: $error"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Update User Detail",style: TextStyle(color: Colors.deepPurple),),
      ),
      body: Form(
          key: _formKey,
          // Getting Specific Data by ID
          child: FutureBuilder(
            future: FirebaseFirestore.instance
                .collection('users')
                .doc(widget.id)
                .get(),
            builder: (_, snapshot) {
              if (snapshot.hasError) {
                print('Something Went Wrong');
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              var data = snapshot.data.data();
              var name = data['name'];
              var Number = data['Number'];
              var tag = data['tag'];
              var branch = data['branch'];

              return Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: ListView(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      child: TextFormField(
                        initialValue: name,
                        autofocus: false,
                        onChanged: (value) => name = value,
                        decoration: InputDecoration(
                          labelText: 'Name: ',
                          labelStyle: TextStyle(fontSize: 20.0),
                          border: OutlineInputBorder(),
                          errorStyle:
                          TextStyle(color: Colors.redAccent, fontSize: 15),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Name';
                          }
                          return null;
                        },
                      ),
                    ),

                    Container(

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      child: TextFormField(
                        initialValue: Number,
                        autofocus: false,
                        onChanged: (value) => Number = value,
                        decoration: InputDecoration(
                          labelText: 'Phone #: ',
                          labelStyle: TextStyle(fontSize: 20.0),
                          border: OutlineInputBorder(),
                          errorStyle:
                          TextStyle(color: Colors.redAccent, fontSize: 15),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Number';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      child: TextFormField(
                        initialValue: tag,
                        autofocus: false,
                        onChanged: (value) => tag = value,
                        decoration: InputDecoration(
                          labelText: 'Student or Alumni: ',
                          labelStyle: TextStyle(fontSize: 20.0),
                          border: OutlineInputBorder(),
                          errorStyle:
                          TextStyle(color: Colors.redAccent, fontSize: 15),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Tag';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      child: TextFormField(
                        initialValue: branch,
                        autofocus: false,
                        onChanged: (value) => branch = value,
                        decoration: InputDecoration(
                          labelText: 'Blood: ',
                          labelStyle: TextStyle(fontSize: 20.0),
                          border: OutlineInputBorder(),
                          errorStyle:
                          TextStyle(color: Colors.redAccent, fontSize: 15),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Blood Group';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.deepPurpleAccent,
                              onPrimary: Colors.white,
                            ),
                            onPressed: () {
                              // Validate returns true if the form is valid, otherwise false.
                              if (_formKey.currentState.validate()) {
                                updateUser(widget.id, name, Number,tag,branch);
                                Navigator.pop(context);
                              }
                            },
                            child: Text(
                              'Update',
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          )),
    );
  }
}
