import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tasbee_app/Splash_Screen.dart';
import 'package:tasbee_app/simple.dart';
import 'advance.dart';
List<Widget> cus=[];
void main() {
  runApp(SplashScreen());
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => firstPage())));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.black,
                Colors.orange,
              ],
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image(image: AssetImage('assets/gg.gif'), height:120)),
            SizedBox(height: 10,),
            SizedBox(
              height:20,
            ),
            CircularProgressIndicator()
          ],
        ));
  }
}

int   lc=100;
int C=0;
String tn="SubhanAllah";
class firstPage extends StatelessWidget {
const firstPage({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Container(
        color: Colors.amber,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:80),
              child:Text(
                'Tasbee App',style: TextStyle(
                fontSize: 50,
                fontWeight:FontWeight.bold,
                color: Colors.black,
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Center(
                child: TextButton(
                  onPressed: () {
                    Get.to(simple());
                  },
                  child: Icon(
                    Icons.play_circle_fill_outlined,
                    color: Colors.black87,
                    size: 100.0,
                  ),

                ),
              ),
            ),
            Text('Simple',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: TextButton(
            onPressed: () {
              Get.to(scr2());
            },
            child: Icon(
              Icons.play_circle_fill_outlined,
              color: Colors.black87,
              size: 100.0,
            ),
          ),
        ),
      ),
            Text('Advance',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
         ],
        ),
      ),
    ),
  );
}
}

final f1 = TextEditingController();
final f2 = TextEditingController();
class scr2 extends StatefulWidget {
  const scr2({Key? key}) : super(key: key);

  @override
  State<scr2> createState() => _scr2State();
}

class _scr2State extends State<scr2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: 30,
            child:Image(
                image: AssetImage("images/kkm.gif"),
                fit: BoxFit.cover),
          ),
         Text("Tasbe App",style: TextStyle(
           color: Colors.amber,
         ),),
          Container(
            height: 30,
            width: 30,
            child:Image(
                image: AssetImage("images/kkm.gif"),
                fit: BoxFit.cover),
          ),
        ],
      ),
      backgroundColor: Colors.black,),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
        Container(
        width: 100,
          height: 648,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/qq.jpeg"),
                fit: BoxFit.cover),


          ),
            child:Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:Colors.amber,
                        foregroundColor: Colors.black,
                      ),
                      onPressed: (){

                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(

                              title: Text('Create New Tasbeeh '),
                              content: Container(
                                height: 200,
                                child: Column(
                                  children: [
                                    Text('Tasbeeh Name'),

                                    TextField(

                                      controller:  f1,
                                      decoration: InputDecoration(
                                        hintText: "Darood Shareef",
                                        border: OutlineInputBorder(),
                                        suffixIcon: IconButton(
                                            onPressed:(){
                                              //text field
                                          

                                              f1.clear();
                                            },
                                            icon: const Icon(Icons.backspace_outlined)
                                        ),


                                      ),


                                    ),
                                    Text('Tasbeeh Count'),
                                    TextField(

                                      controller:  f2,
                                      decoration: InputDecoration(
                                        hintText: "10000",
                                        border: OutlineInputBorder(),
                                        suffixIcon: IconButton(
                                            onPressed:(){
                                              //limit
                                          
                                              
                                              f2.clear();
                                            },
                                            icon: const Icon(Icons.backspace_outlined)
                                        ),


                                      ),


                                    ),


                                  ],
                                ),
                              ),

                              actions: [
                             
                                Center(
                                  child: TextButton(

                                    onPressed: () {
                                      //add
                                    

                                      
                                      String varf1=f1.text;
                                      int  varf2=int.parse(f2.text);
                                        cus.add( ElevatedButton(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("$varf1", style: TextStyle(color: Colors.amber)),
                                            Text(varf2.toString(), style: TextStyle(color: Colors.amber)),
                                          ],
                                        ),
                                        style: ElevatedButton.styleFrom(


                                          backgroundColor: Colors.black,
                                        ),
                                        onPressed: () {
                                          //buten list
                                     
                                          setState(() {

                                              tn=varf1;
                                              lc=varf2;
                                              C=0;
                                            Get.to(scr2());
                                            Navigator.pop(context);
                                          });
                                          Navigator.pop(context);
                                          Get
                                              .to(scr2());
                                        },
                                      ));
                                      setState(() {
                                          tn=varf1;
                                          lc=varf2;
                                          C=0;

                                      });

                                      f2.clear();
                                      f1.clear();
                                      Navigator.pop(context);
                                    },
                                    child: Text('ADD'),
                                  ),
                                ),
                              ],
                            );
                          },
                        );

                      }, child:Text('Custom',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

                    ),
                  )),
                  SizedBox(height:20),
                  TextButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:Colors.amber,
                        foregroundColor: Colors.black,
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>src3()));

                      }, child:Text('  Saved',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),))
                ],
              ),
            )
        ),
        // SizedBox(width: 1,),
        Container(
          width:5,
          height: 648,
          color: Colors.brown,
        ),
        Container(
          width:255,
          height: 648,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/mm.jpeg"),
                fit: BoxFit.cover),


          ),

            child: Column(

              children: [
                SizedBox(height: 70,),
                Text('Allah',style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 100,),
                Text('0',style: TextStyle(color: Colors.white,
                fontSize: 35),),
                SizedBox(height: 100,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:Colors.amber,
                          foregroundColor: Colors.black,
                        ),
                        onPressed: (){}, child:Text('Count',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),)),
                    SizedBox(width: 20,),
                    TextButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:Colors.amber,
                          foregroundColor: Colors.black,
                        ),
                        onPressed: (){}, child:Text('Reset',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),))
                  ],
                ),
              ],

            ),

          ),


              ],
            )
          ],
        ),
      ),

    );
  }
}

class src3 extends StatefulWidget {
  const src3({Key? key}) : super(key: key);

  @override
  State<src3> createState() => _src3State();
}

class _src3State extends State<src3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Container(
        height: 30,
        width: 30,
        child:Image(
        image: AssetImage("images/kkm.gif"),
    fit: BoxFit.cover),
    ),
    Text("Tasbe App",style: TextStyle(
    color: Colors.amber,
    ),),
    Container(
    height: 30,
    width: 30,
    child:Image(
    image: AssetImage("images/kkm.gif"),
    fit: BoxFit.cover),
    ),
    ],
    ),
    backgroundColor: Colors.black,),
    body: Container(
    ),
    );
  }
}
