import 'package:flutter/material.dart';
import 'package:guessnumber_final/services/database.dart';
final dbHelper = DatabaseHelper();
class offline extends StatefulWidget {
  const offline({Key? key}) : super(key: key);

  @override
  State<offline> createState() => _offlineState();
}

class _offlineState extends State<offline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Previous Record'),
        backgroundColor: Colors.deepPurple,
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
                      height:100,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Flexible(
                            flex: 5,
                            child: Column(
                              children: [
                                Row(

                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),

                                    Spacer(),
                                    SizedBox(
                                      width: 20,
                                    ),
                                  ],

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 15, right: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Total Tries",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Spacer(),
                                      Text(
                                        list['total'],
                                        style: TextStyle(color: Colors.white),
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
                                        "Right Answer",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Spacer(),
                                      Text(
                                        list['correct'],
                                        style: TextStyle(color: Colors.white),
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
                                        "Wrong Answer",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Spacer(),
                                      Text(
                                        list['wrong'],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),

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
