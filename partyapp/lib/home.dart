import 'package:flutter/material.dart';
import 'add_students.dart';
import 'database.dart';
final dbHelper = DatabaseHelper();
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {

  Home();
 // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Records',style: TextStyle(color: Colors.amber)),centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: FutureBuilder<List<Map<String, dynamic>>>(
          future: dbHelper.mydb().then((db) => dbHelper.queryAllRows()),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Map<String, dynamic>>? rows = snapshot.data;
              return ListView.builder(
                itemCount: rows?.length,
                itemBuilder: (context, index) {
                  Map<String, dynamic> list = rows![index];
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 282,

                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(30)),
                      child:Row(
                        children: [
                          Flexible(
                            flex: 5,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 15, right: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Email",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Spacer(),
                                      Text(
                                        list['email'],
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 15, right: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Registration Number",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Spacer(),
                                      Text(
                                        list['reg'],
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 15, right: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Student Name",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Spacer(),
                                      Text(
                                        list['name'],
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 15, right: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Contact Number",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Spacer(),
                                      Text(
                                        list['phone'],
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                //
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 15, right: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Gender",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Spacer(),
                                      Text(
                                        list['gender'],
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 15, right: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Payment",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Spacer(),
                                      Text(
                                        list['fee'],
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),

                                //


                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 15, right: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Status",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Spacer(),
                                      Text(
                                        list['st'],
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black54,
                                      borderRadius: BorderRadius.circular(25)),
                                  height: 55,
                                  child: Row(
                                    children: [
                                      TextButton(
                                        onPressed: () async {
                                          TextEditingController regno =
                                          TextEditingController(
                                              text: list['reg']);
                                          TextEditingController gender =
                                          TextEditingController(
                                              text: list['gender']);
                                          TextEditingController st =
                                          TextEditingController(
                                              text: list['st']);
                                          TextEditingController fee =
                                          TextEditingController(
                                              text: list['fee']);
                                          TextEditingController name =
                                          TextEditingController(
                                              text: list['name']);

                                          TextEditingController email =
                                          TextEditingController(
                                              text: list['email']);
                                          TextEditingController phone =
                                          TextEditingController(
                                              text: list['phone']);
                                          await showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return SingleChildScrollView(
                                                child: AlertDialog(
                                                  title: Center(
                                                      child: Text('Update')),
                                                  content: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                      TextField(
                                                        controller: email,
                                                        decoration: InputDecoration(
                                                            prefixText: "Email: "),
                                                      ),
                                                      TextField(
                                                        controller: regno,
                                                        decoration: InputDecoration(
                                                            prefixText: "Reg#: "),
                                                      ),
                                                      TextField(
                                                        controller: gender,
                                                        decoration: InputDecoration(
                                                            prefixText: "gender: "),
                                                      ),

                                                      TextField(
                                                        controller: name,
                                                        decoration: InputDecoration(
                                                            prefixText: "Name: "),
                                                      ),
                                                      TextField(
                                                        controller: phone,
                                                        decoration: InputDecoration(
                                                            prefixText:
                                                            "Contact Number : "),
                                                      ),
                                                      TextField(
                                                        controller: fee,
                                                        decoration: InputDecoration(
                                                            prefixText: "Payment: "),
                                                      ),


                                                      TextField(
                                                        controller: st,
                                                        decoration: InputDecoration(
                                                            prefixText:
                                                            "Status: "),
                                                      ),
                                                    ],
                                                  ),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () async {
                                                        if (regno.text.isNotEmpty &&
                                                            name.text.isNotEmpty &&
                                                            email.text.isNotEmpty &&
                                                            phone.text.isNotEmpty&&
                                                            fee.text.isNotEmpty && st.text.isNotEmpty&& gender.text.isNotEmpty
                                                        ) {
                                                          Map<String, dynamic> row = {
                                                            DatabaseHelper.columnId:
                                                            list['_id'],
                                                            DatabaseHelper.columnName:
                                                            name.text,
                                                            DatabaseHelper.columnReg:
                                                            regno.text,
                                                            DatabaseHelper.columnEmail:
                                                            email.text,
                                                            DatabaseHelper.columnFee:
                                                            fee.text,
                                                            DatabaseHelper.columnGender:gender.text,
                                                            DatabaseHelper.columnPhone:
                                                            phone.text,
                                                            DatabaseHelper.columnStatus:
                                                            st.text,


                                                          };
                                                          final rowsAffected = await dbHelper.update(row);
                                                          setState(() {
                                                            Home();
                                                          });
                                                          Navigator.of(context).pop();
                                                        }
                                                      },
                                                      child: Text(
                                                        'Yes',
                                                        style: TextStyle(
                                                            color: Colors.green),
                                                      ),
                                                    ),
                                                    TextButton(
                                                      onPressed: () {
                                                        Navigator.of(context).pop();
                                                      },
                                                      child: Text(
                                                        'No',
                                                        style: TextStyle(
                                                            color: Colors.black),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child:Text('Update',style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          Map<String, dynamic> row = {
                                            DatabaseHelper.columnId:
                                            list['_id'],
                                            DatabaseHelper.columnName:
                                            list['name'],
                                            DatabaseHelper.columnReg:
                                            list['reg'],
                                            DatabaseHelper.columnEmail:
                                            list['email'],
                                            DatabaseHelper.columnGender:
                                            list['gender'],
                                            DatabaseHelper.columnPhone:
                                            list['phone'],

                                          };
                                          final rowsAffected =
                                          await dbHelper.update(row);
                                          print(rowsAffected);
                                          setState(() {
                                            Home();
                                          });
                                        }
                                        ,
                                        child: Container(),

                                      ),
                                      Spacer(),
                                      TextButton(
                                       onPressed: () async {
                                          await showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  title: Text('Confrim?'),
                                                  actions: [
                                                    TextButton(
                                                        onPressed: () async {
                                                          Map<String, dynamic> row = {
                                                            DatabaseHelper.columnId:
                                                            list['_id'],

                                                          };
                                                          final rowsAffected =
                                                          await dbHelper
                                                              .Delete(row);
                                                          setState(() {
                                                            Home();
                                                          });
                                                          Navigator.of(context).pop();
                                                        }  ,

                                                        child:Text("Yes",style: TextStyle(color: Colors.red),)
                                                    ),
                                                    TextButton(
                                                      onPressed: () {
                                                        Navigator.of(context).pop();
                                                      },
                                                      child: Text(
                                                        'No',
                                                        style: TextStyle(
                                                            color: Colors.green),
                                                      ),
                                                    ),
                                                  ],
                                                );
                                              });
                                        },
                                          child: Text('Delete',style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.red,
                                          ),),

                                        ),

                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                  // return ListTile(
                  //   title: Text(list['phone']),
                  //   subtitle: Text(list['reg'].toString()),
                  // );
                },
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),

    );
  }
}
