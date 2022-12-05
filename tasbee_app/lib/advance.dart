import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
            padding: EdgeInsets.only(top:80, left:20, right:20),
            child: Wrap(
              alignment: WrapAlignment.start,
              children: [

                ElevatedButton(
                    onPressed: () async {
                      SharedPreferences pre = await SharedPreferences.getInstance();
                      pre.setString("name", "FlutterCampus"); //save string
                      pre.setInt("age", 25); //save integer
                      pre.setBool("married", false); //save boolean
                      pre.setDouble("price", 240.50); //save double
                      pre.setStringList("tags", ["Flutter", "Dart", "App"]); //save List
                    },
                    child: Text("Save Data")
                ),


                ElevatedButton(
                    onPressed: () async {
                      SharedPreferences pre = await SharedPreferences.getInstance();
                      String name = pre.getString("name") ?? "";
                      //here "??" is a fallback operator,
                      //if the return is null, it will be the assigned value;

                      int age = pre.getInt("age") ?? 0;
                      bool married = pre.getBool("married") ?? false;
                      double price = pre.getDouble("price") ?? 0.00;
                      List<String> tags = pre.getStringList("tags") ?? [];
                    },
                    child: Text("Get Data")
                )
              ],)
        )
    );
  }
}