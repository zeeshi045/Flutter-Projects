import 'package:flutter/material.dart';
import 'package:guessnumber_final/s2.dart';
class result extends StatefulWidget {
  const result({Key? key}) : super(key: key);

  @override
  State<result> createState() => _resultState();
}

class _resultState extends State<result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title:Text('Current Result show'),
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
            )
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: results.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Colors.grey,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        results[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
            ),
            Text("Improvement Click "),
            Text(" below button and restart the Score"),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple, // Background color
                    onPrimary: Colors.white,
                    // Text Color (Foreground color)
                  ),
                  child: Text('For Improvement', style: TextStyle(fontSize: 24)),
                  // Black foreground color
                  onPressed: () {
                    setState((){
                      results.clear();
                      num1 = 0;
                      num2 = 0;
                      num3 = 0;
                      num4 = 0;
                      var1 = 0;
                      var2 = 0;
                      var3 = 0;
                      var4 = 0;
                      num5 = 0;
                      chance = 2;
                      trying = 0;
                      correct = 0;
                      check = false;
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => screen2()));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
