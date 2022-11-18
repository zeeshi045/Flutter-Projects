import 'package:flutter/material.dart';
class simple extends StatefulWidget {
  const simple({Key? key}) : super(key: key);

  @override
  State<simple> createState() => _simpleState();
}

class _simpleState extends State<simple> {
  int _counter = 0;

  incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  decrementCounter() {
    setState(() {
      _counter--;
    });
  }
  resetCounter() {
    setState(() {
      _counter=0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: Text('Tasbee App'),
          backgroundColor: Colors.black87,
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.amber,
                    Colors.black87,

                  ],
                )
            ),
            child: Center(
              child: Text(
                '$_counter',
                style: TextStyle(
                  fontSize: 100.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: EdgeInsets.only(top: 320,left: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Align(
                alignment: Alignment.center,
                child: FloatingActionButton(

                  onPressed: incrementCounter,
                  child: Icon(Icons.add),
                ),
              ),

              SizedBox(width: 20,),
              Align(
                alignment: Alignment.center,
                child: FloatingActionButton(

                  onPressed: resetCounter,
                  child: Icon(Icons.lock_reset),
                ),
              ),
            ],
          ),
        )
    );
  }
}
