import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Counter App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
          title: Text(widget.title),
          backgroundColor: Colors.black87,
        ),
        body: Center(
      child: Container(
      decoration: BoxDecoration(
      gradient: LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.bottomLeft,
      colors: [
        Colors.yellow,
        Colors.green,
        Colors.white,
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
                  child: Icon(Icons.delete_forever_sharp),
                ),
              ),
              SizedBox(width: 20,),
              Align(
                alignment: Alignment.center,
                child: FloatingActionButton(

                  onPressed: decrementCounter,
                  child: Icon(Icons.remove),
                ),
              ),
            ],
          ),
        )
    );
  }
}
