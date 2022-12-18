import 'package:flutter/material.dart';
import 'package:partywillingapp/home.dart';
import 'database.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';

final dbHelper = DatabaseHelper();

class AddStudents extends StatefulWidget {
  const AddStudents({Key? key}) : super(key: key);

  @override
  _AddStudentsState createState() => _AddStudentsState();
}

class _AddStudentsState extends State<AddStudents> {
  TextEditingController regCon = new TextEditingController();
  TextEditingController nameCon = new TextEditingController();
  TextEditingController emailCon = new TextEditingController();
  TextEditingController addressCon = new TextEditingController();
  TextEditingController phoneCon = new TextEditingController();
  TextEditingController fee = new TextEditingController();
  TextEditingController st = new TextEditingController();

  bool isloading = false;
  int a = 1;

  bool check = false;
  bool _isMale = false;
  bool _isFemale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Add Student",style: TextStyle(color: Colors.amber),),
        backgroundColor: Colors.black,
      ),
      body: isloading
          ? CircularProgressIndicator()
          : Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          children: [
            TextField(
              controller: emailCon,
              decoration: InputDecoration(
                label: Text(
                  "Email",
                  style: TextStyle(color: Colors.black),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
                hintText: "zeeshi45@gmail.com",
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: regCon,
              decoration: InputDecoration(
                label: Text(
                  "Registration Number",
                  style: TextStyle(color: Colors.black),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
                hintText: "SP19-BCS-056",
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: nameCon,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                label: Text(
                  "Enter Student name",
                  style: TextStyle(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
                hintText: "abc",
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: fee,
              decoration: InputDecoration(
                label: Text(
                  "Payment",
                  style: TextStyle(color: Colors.black),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
                hintText: "Rs:1000",
              ),
            ),

            SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: phoneCon,
              decoration: InputDecoration(
                label: Text(
                  "Contact Number",
                  style: TextStyle(color: Colors.black),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
                hintText: "03012323237",
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: st,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                label: Text(
                  "Status",
                  style: TextStyle(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
                hintText: "paid/unpaid",
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text('Gender:')),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: _isMale,
                  onChanged: (value) {
                    setState(() {
                      _isMale = value!;
                     _isFemale = false;
                    });
                  },
                ),
                Text('Male'),
                Spacer(),
                Checkbox(
                  value: _isFemale,
                  onChanged: (value) {
                    setState(() {
                      _isFemale = value!;
                       _isMale = false;
                    });
                  },
                ),
                Text('Female'),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    Map<String, dynamic> row = {
                      DatabaseHelper.columnName: nameCon.text,
                      DatabaseHelper.columnReg: regCon.text,
                      DatabaseHelper.columnEmail: emailCon.text,
                      DatabaseHelper.columnStatus: st.text,
                      DatabaseHelper.columnFee: fee.text,
                      DatabaseHelper.columnGender:
                      _isMale == false ? "Female" : "Male",
                      DatabaseHelper.columnPhone: phoneCon.text,
                    };
                    final id = await dbHelper.insert(row);
                    debugPrint('inserted row id: $id');
                    showAnimatedDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (BuildContext context) {
                        return ClassicGeneralDialogWidget(
                          titleText: 'Submitted',
                          contentText: '',
                          onPositiveClick: () {
                            Navigator.of(context).pop();
                          },
                          onNegativeClick: () {
                            Navigator.of(context).pop();
                          },
                        );
                      },
                      animationType: DialogTransitionType.rotate,
                      curve: Curves.fastOutSlowIn,
                      duration: Duration(seconds: 1),
                    );


                  },
                  child: Text("Submit",style:TextStyle(color: Colors.amber),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.all(15),
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
