import 'package:alumni/modals.dart/universalVariables.dart';
import 'package:alumni/resources/firebaseRepos.dart';
import 'package:alumni/screens/auxScreens/userPostCard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'EditInfo.dart';
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<QueryDocumentSnapshot> _list = [];
  FirebaseRepos _repositories = new FirebaseRepos();
  DocumentSnapshot userData;

  initState() {
    _repositories.getCurrentUserData().then((data) {
      setState(() {
        userData = data;
      });
      _repositories
          .getUserPosts(_repositories.getCurrentUser().uid)
          .then((List<QueryDocumentSnapshot> list) {
        setState(() {
          _list = list;
        });
      });
    });

    super.initState();
  }

  Future _showDialog() {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("LogOut"),
            content: Text("Are you sure to log out?"),
            actions: [
              TextButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurpleAccent,
                    onPrimary: Colors.white,
                  ),
                  onPressed: () {
                    _repositories.signOut().then((value) {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushReplacementNamed('signUp');
                    });
                  },
                  child: Text("Yes")),
              TextButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurpleAccent,
                    onPrimary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("No")),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    _appbar() {
      return AppBar(
        title: userData==null?Text("User Info"):Text(userData.data()['name'].toString().toUpperCase(),overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.deepPurple),),
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white
        ,
        actions: [
          IconButton(
            icon: Icon(Icons.logout, color: Colors.deepPurple),
            onPressed: () {
              _showDialog();
            },
          ),
        ],
      );
    }

    _firstContainer() {
      return Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 50),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: TextButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurpleAccent,
                  onPrimary: Colors.white,
                ),
              onPressed: () {
      Navigator.push(
      context,
      MaterialPageRoute(
      builder: (context) => EditInfo(),
      ),
      );
      },
          child:Text('Update Profile'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 77.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Shimmer.fromColors(
                  baseColor:
                      userData.data()['tag'].toString().toUpperCase() == "STUDENT"
                          ? Colors.white
                          : Colors.white,
                  highlightColor: Colors.white,
                  child: Text(
                    "${userData.data()['tag'].toString().toUpperCase()} ${userData.data()['course'].toString().toUpperCase()}",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 77.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "${userData.data()['startingYear'].toString().toUpperCase()} - ${userData.data()['endingYear'].toString().toUpperCase()}",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 77.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  userData.data()['rollNumber'].toString().toUpperCase(),
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 77.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  userData.data()['Number'].toString(),
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      );
    }

    _secondContainer() {
      return Expanded(
        child: Container(
          child: _list.length == 0
              ? Container(
                  child: Center(
                    child: Text(
                      "No post Upload Yet",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                )
              : _widgetContainer(),
        ),
      );
    }

    return Scaffold(
      appBar: _appbar(),
      backgroundColor:Colors.deepPurple,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: userData == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  _firstContainer(),
                  _secondContainer(),
                ],
              ),
      ),
    );
  }

  _widgetContainer() {
    return Container(
      child: ListView.separated(
        itemBuilder: (context, index) => UserPostCard(_list[index]),
        itemCount: _list.length,
        separatorBuilder: (context, index) => Divider(
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}
