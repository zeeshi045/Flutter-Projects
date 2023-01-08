import 'dart:io';
import 'package:alumni/modals.dart/posts.dart';
import 'package:alumni/modals.dart/universalVariables.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../resources/firebaseRepos.dart';
import 'package:uuid/uuid.dart';
import 'dart:async';
class AddPost extends StatefulWidget {
  @override
  _AddPostState createState() => _AddPostState();
}


class _AddPostState extends State<AddPost> {

  User currentUser;
  File _image;
  ImagePicker _picker;
  TextEditingController _textController = new TextEditingController();
  FirebaseRepos _repository = FirebaseRepos();
  bool shouldIRotate;
  String imgUrl;
  String SubAdmin;
  DocumentSnapshot userData;
  var uid;

  initState() {
    currentUser = _repository.getCurrentUser();
    _repository.getCurrentUserData().then((data) {
      setState(() {
        userData = data;
        SubAdmin=userData.data()['SubAdmin'].toString().toUpperCase();
      });});
    _picker = ImagePicker();
    shouldIRotate = false;
    uid = Uuid();
    super.initState();
  }

  Future getImageFromCamera() async {
    final _pickedImage = await _picker.getImage(source: ImageSource.camera);
    setState(() {
      if (_pickedImage != null) _image = File(_pickedImage.path);
    });
  }

  Future getImageFromGallery() async {
    final _pickedImage = await _picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (_pickedImage != null) _image = File(_pickedImage.path);
    });
  }

  Future _showDialog() {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Select image"),
            content: Text("Choose image from"),
            actions: [
              TextButton(
                  onPressed: () {
                    getImageFromCamera()
                        .then((value) => Navigator.pop(context));
                  },
                  child: Text("Camera")),
              TextButton(
                  onPressed: () {
                    getImageFromGallery()
                        .then((value) => Navigator.pop(context));
                  },
                  child: Text("Gallery")),
            ],
          );
        });
  }

  Future _showUploadingDialog() {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Uploading plz wait...."),
          content: Container(
            height: 100,
            child: Center(
 child:CircularProgressIndicator()

            ),
          ),
        );
      },
    );
  }
  Future _showUploadingDialog2() {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Uploading Successfully"),
          content: Container(
            height: 100,
            child: Center(
              child: TextButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurpleAccent,
                  onPrimary: Colors.white,
                ),
                onPressed: (){
               Navigator.pop(context);

                },
                child: Text('ok'),
              ),
            ),
          ),
        );
      },
    );
  }

  _appbar() {
    return AppBar(
      title: Text("Make Post",style: TextStyle(color: Colors.deepPurple),),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 10.0),
          child: IconButton(
            icon: Icon(
              Icons.upload,
              size: 25,
              color: Colors.deepPurple,
            ),
            onPressed: () {
              if (_image == null &&
                  (_textController.text.trim().length == 0 ||
                      _textController.text.length == 0)) {
              } else {

                  _showUploadingDialog();

                _repository.addImageToDB(_image).then(
                  (String _imageUrl) {
                    setState(() {
                      imgUrl = _imageUrl;
                    });
                    _repository
                        .getCurrentUserData()
                        .then((DocumentSnapshot userData) {
                      Map<String, dynamic> ud = userData.data();
                      User _currentUser = _repository.getCurrentUser();
                      String uidd = uid.v1().toString();

                      Post _myPost = new Post(
                        imageUrl: _imageUrl,
                        likes: [],
                        text: _textController.text,
                        uid: _currentUser.uid,
                        date: DateTime.now(),
                        branch: ud['branch'],
                        course: ud['course'],
                        name: ud['name'],
                        id: uidd,
                        tag: ud['tag'],
                      );

                      _repository.addPostDataToDB(_myPost, uidd).then((value) {
                        setState(() {
                          _showUploadingDialog2();
                          _image = null;
                          _textController.clear();
                        });
                      });
                    });
                  },
                );
              }
            },
          ),
        )
      ],
      elevation: 0,
      centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
    );
  }

  Widget imageContainer() {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: FileImage(_image),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  Widget textContainer() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10),
        //
        child: TextField(
          controller: _textController,
          maxLines: 5,


          decoration: InputDecoration(
            hintText: "Write",
            helperStyle: TextStyle(color: Colors.white),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Color(0xff2b9ed4))),
          ),
        ),
        //
      ),
    );
  }

  Widget buttonContainer() {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(right:150),
      child: TextButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.deepPurpleAccent,
          onPrimary: Colors.white,
        ),
        onPressed: () {
          _showDialog();
        },
        child: Text("Add image",
            style: TextStyle(color: Colors.white, fontSize: 16)),

      ),
    );
  }
adminpost()
{
  return SingleChildScrollView(
    child: Column(
      children: [

        if (_image != null) imageContainer(),
        textContainer(),
        if (_image == null) buttonContainer(),
      ],
    ),
  );
}
  notpost()
  {
    return Container(
      margin: EdgeInsets.only(
          left: 10,
          right:10,
          bottom: 10
      ),
      height: 60,
      width: MediaQuery.of(context).size.width,
      color: Colors.deepPurple,
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Text('Only Admin Can Posts', textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),

            ),
          ),

        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      backgroundColor: Colors.deepPurple,
      body: Column(
        children: [
         Column(
             children: [
               (currentUser.uid=='x7MDMGwzbgWAB20EQTrqxmZe5pv1'||  SubAdmin=='SUB')
                   ? adminpost()
                   : notpost(),
             ],
         ),
          // if (shouldIRotate == true)
          //   Container(
          //     height: MediaQuery.of(context).size.height,
          //     width: MediaQuery.of(context).size.width,
          //     child: Center(
          //       child: CircularProgressIndicator(),
          //     ),
          //   )
        ],
      ),
    );
  }
}
