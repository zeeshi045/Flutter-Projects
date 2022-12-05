import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
List<Widget> cus=[];
String? saveds;
int ?s;
int   lc=100;
int C=0;
String tn="Allah";
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: scr2(),
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
  Future<SharedPreferences> _pref= SharedPreferences.getInstance();
  late SharedPreferences prefs;
  getValue()async {
    prefs = await _pref;
    saveds=prefs.containsKey("savedString") ? prefs.getString("savedString"): "";
    s=(prefs.containsKey("saved") ? prefs.getInt("saved"): "0") as int?;
    setState(() {
      tn=saveds!;
      C=s!;
    });
  }


  void initState(){
    getValue();
    super.initState();
  }
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
      body: SingleChildScrollView(
        child: Container(
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

                                        title: Container(
                                          height: 100,
                                          width: 50,

                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage("images/jj.gif"),
                                                fit: BoxFit.cover),


                                          ),
                                        ),
                                        // child: Text(''),),
                                        content: SingleChildScrollView(
                                          child: Container(
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
                                        ),

                                        actions: [

                                          Center(
                                            child: TextButton(
                                              onPressed: () {//add
                                                String varf1=f1.text;
                                                int  varf2=int.parse(f2.text);
                                                cus.add(TextButton(
                                                  child: Container(
                                                    height: 60,
                                                    width:300,
                                                    color: Colors.amber,
                                                    child: Row(
                                                      children: [
                                                        SizedBox(width: 5,),
                                                        Text('$varf1',style: TextStyle(
                                                          fontSize: 17,
                                                          color: Colors.black,
                                                        ),),
                                                        Spacer(),
                                                        Text(varf2.toString(),style: TextStyle(
                                                          fontSize: 17,
                                                          color: Colors.black,
                                                        ),)
                                                      ],
                                                    ),
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
                        Text('$tn',style: TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.bold,
                        ),),
                        SizedBox(height: 100,),
                        Text('$C',style: TextStyle(color: Colors.white,
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
                                onPressed: (){
                                  print("kk");
                                  if(lc>10000){
                                    lc=10000;
                                  }                              if(C==lc){
                                    showAnimatedDialog(
                                      context: context,
                                      barrierDismissible: true,
                                      builder: (BuildContext context) {
                                        return ClassicGeneralDialogWidget(
                                          titleText: 'Complete!',
                                          contentText: 'Good Bye',
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
                                  }else {
                                    setState(() {
                                      C++;
                                    });
                                    prefs.setString("savedString",tn);
                                    prefs.setInt("saved",C);
                                  }
                                },

                                child:Text('Count',style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),)),
                            SizedBox(width: 20,),
                            TextButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:Colors.amber,
                                  foregroundColor: Colors.black,
                                ),
                                onPressed: (){ setState(() {
                                  C=0;
                                });}, child:Text('Reset',style: TextStyle(
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
  Future<SharedPreferences> _pref= SharedPreferences.getInstance();
  late SharedPreferences prefs;
  getValue()async {
    prefs = await _pref;
    saveds=prefs.containsKey("savedString") ? prefs.getString("savedString"): "";
    s=(prefs.containsKey("saved") ? prefs.getInt("saved"): "0") as int?;
    setState(() {
      tn=saveds!;
      C=s!;
    });
  }


  void initState(){
    getValue();
    super.initState();
  }
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 15,),

              SizedBox(width: 15,),
              Center(
                child: Text('Popular Tasbeeh',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
              ),
              SizedBox(height: 20,),
              TextButton(
                onPressed: () {
                  setState(() {
                    tn="Alhamdulillah";
                    lc=100;
                    C=0;
                    Get.to(scr2());
                  });
                  prefs.setString("savedString",tn);

                  Get.to(scr2());
                },
                child: Container(
                  height: 60,
                  width:300,
                  color: Colors.amber,
                  child: Row(
                    children: [
                      SizedBox(width: 5,),
                      Text('Alhamdulillah',style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),),
                      Spacer(),
                      Text('100',style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),)
                    ],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    tn="Astaghfirullah";
                    lc=100;
                    C=0;
                    Get.to(scr2());
                  });
                  Get.to(scr2());
                  prefs.setString("savedString",tn);
                },
                child: Container(
                  height: 60,
                  width:300,
                  color: Colors.amber,
                  child: Row(
                    children: [
                      SizedBox(width: 5,),
                      Text('Astaghfirullah',style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),),
                      Spacer(),
                      Text('100',style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),)
                    ],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    tn="Allahu Akbar";
                    lc=100;
                    C=0;
                    Get.to(scr2());
                  });
                  prefs.setString("savedString",tn);

                  Get.to(scr2());
                },
                child: Container(
                  height: 60,
                  width:300,
                  color: Colors.amber,
                  child: Row(
                    children: [
                      SizedBox(width: 5,),
                      Text('Allahu Akbar',style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),),
                      Spacer(),
                      Text('100',style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),)
                    ],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    tn="Ya Alimu";
                    lc=100;
                    C=0;
                    Get.to(scr2());
                  });
                  prefs.setString("savedString",tn);

                  Get.to(scr2());
                },
                child: Container(
                  height: 60,
                  width:300,
                  color: Colors.amber,
                  child: Row(
                    children: [
                      SizedBox(width: 5,),
                      Text('Ya Alimu',style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),),
                      Spacer(),
                      Text('100',style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text('Custom Tasbeeh',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
              ),
              Column(
                children: cus,
              ),
              SizedBox(height: 20,),
              Column(
                children: [
                  TextButton(onPressed:(){
                    setState(() {

                    });
                    Get.to(scr2());

                  } , child:Container(
                    height: 90,
                    width:300,
                    color: Colors.amber,
                    child: Column(
                      children: [
                        Text('Current Tasbeeh Status',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            SizedBox(width: 5,),
                            Text('$tn',style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                            ),),
                            Spacer(),
                            Text('$C',style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                            ),)
                          ],
                        ),
                      ],
                    ),
                  ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
