import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
int a=0;
String b="Allah";
int c=0;
List<ElevatedButton> tasbheekaro = [];

void main() {
  runApp(mid());
}
class mid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen1(a:c,b:""),
    );
  }
}


class screen1 extends StatefulWidget {
  screen1({
    required this.a,required this.b
});
   int a=0;
 String b="";
  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> with TickerProviderStateMixin {
  List<Widget> navItems = [
    ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(70, 70),

          backgroundColor: Colors.amberAccent,
        ),onPressed: () {
      Get.to(secreen2());
    }, child: Text("Saved Tasbeeh's")),
    SizedBox(
      height: 10,
    ),
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(70, 70),

        backgroundColor: Colors.amberAccent,
      ),onPressed: () {
      Get.to(dialogbox());
    },
      child: Text("Custom Tasbeeh's"),

    ),
    SizedBox(
      height: 10,
    ),
    ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(70, 70),

          backgroundColor: Colors.amberAccent,
        ),
        onPressed: () {
          Get.to(screen1(a:0,b:""));
        }, child: Text("About")),
    Container(

      height:510,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/123.jpg"),
        ),
      ),
    )

  ];
  bool mobile = false;
  @override
  Widget build(BuildContext context) {
    mobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
      appBar: AppBar(
        title:Text('Tasbeeh App',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30),

        ),
        actions: mobile ? null : navItems,
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      drawer: mobile
          ? Drawer(
        child: ListView(
          children: navItems,
        ),
      )
          : null,
      body: Container(
        child: Column(

          children: [
            Container(
                height: 150,
                color: Colors.black,
                child: Column(

                  children: [
                    Center(
                      child: Text("$b", style: TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Open Sans',
                          fontSize: 30),),),
                    Center(
                      child: Text("$c", style: TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Open Sans',
                          fontSize: 20),),),
                    SizedBox(
                      height: 15,

                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        SizedBox(
                          height: 35,
                          width: 100,
                          child: SizedBox(
                              height:50, //height of button
                              width:300, //width of button
                              child:TextButton(
                                style: TextButton.styleFrom(
                                  //background color of button
                                  side: BorderSide(width:3, color:Colors.amberAccent), //border width and color

                                  shape: RoundedRectangleBorder( //to set border radius to button
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  //content padding inside button
                                ),
                                onPressed: (){
                                  if(c==b){
                                    AlertDialog alert = AlertDialog(
                                      title: Text("Success"),
                                      content: Text("Limit Reached :$b"),
                                      actions: [
                                        TextButton(
                                          onPressed: (){
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('ok',),
                                        ),

                                      ],
                                    );
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return alert;
                                      },
                                    );
                                  }
                                  else{
                                    setState(() {
                                      c++;
                                    });
                                  }

                                },
                                child: Text("Count",style: TextStyle(
                                    color: Colors.amber,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    fontFamily: 'Open Sans',
                                    fontSize: 12),),)
                          ),
                        ),
                        SizedBox(width: 15,),
                        SizedBox(
                            height: 35,
                            width: 100,
                            child: SizedBox(
                                height:50, //height of button
                                width:300, //width of button
                                child:ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.black, //background color of button
                                    side: BorderSide(width:3, color:Colors.amberAccent), //border width and color
                                    elevation: 3, //elevation of button
                                    shape: RoundedRectangleBorder( //to set border radius to button
                                        borderRadius: BorderRadius.circular(30)
                                    ),
                                    //content padding inside button
                                  ),
                                  onPressed: (){
                                    setState(() {
                                      c=0;
                                    });

                                    //code to execute when this button is pressed.
                                  },
                                  child: Text("Reset",style: TextStyle(
                                      color: Colors.amber,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'Open Sans',
                                      fontSize: 12),),)
                            )
                        ),
                      ],
                    ),









                  ],
                )
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height:510,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/11.jpg"),
                ),
              ),
            )

          ],
        ),

      ),
    );
  }
}

class secreen2 extends StatefulWidget {
  const secreen2({Key? key}) : super(key: key);

  @override
  State<secreen2> createState() => _secreen2State();
}

class _secreen2State extends State<secreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Row(
        children: [
          SizedBox(width: 30,),
          Text('Tasbhee App')

        ],
      ),
        backgroundColor: Colors.amberAccent,),
      body: Container(
        child:   Column(
          children: tasbheekaro,
        ),
      ),
    );
  }
}
class dialogbox extends StatefulWidget {
  const dialogbox({Key? key}) : super(key: key);

  @override
  State<dialogbox> createState() => _dialogboxState();
}

class _dialogboxState extends State<dialogbox> {
  final name = TextEditingController();
  final limit = TextEditingController();
  String   tasbheename="";
  int  tasbheelimit=0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Row(
        children: [
          SizedBox(width: 30,),
          Text('Custom Tusbhee')

        ],
      ),
        backgroundColor: Colors.amberAccent,),
      body: Container(
        child:Column(
          children: [
            Text('Enter Tesbhee name'),
            TextField(

              controller:  name,
              decoration: InputDecoration(
                hintText: "Allah_ho_Akbar..",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed:(){
                      name.clear();
                    },
                    icon: const Icon(Icons.clear_rounded)
                ),


              ),


            ),


            Text('Enter Tasbhee Limit'),
            TextField(

              controller:  limit,
              decoration: InputDecoration(
                hintText: "Allah_ho_Akbar..",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed:(){
                      limit.clear();
                    },
                    icon: const Icon(Icons.clear_rounded)
                ),


              ),


            ),
            ElevatedButton(//add button
              style: ElevatedButton.styleFrom(
                primary: Colors.black, //background color of button
                side: BorderSide(width:3, color:Colors.amberAccent), //border width and color
                elevation: 3, //elevation of button
                shape: RoundedRectangleBorder( //to set border radius to button
                    borderRadius: BorderRadius.circular(30)
                ),
                //content padding inside button
              ),
              onPressed: (){
                tasbheelimit=int.parse(limit.text);
                tasbheename=name.text;
                b=tasbheename;
                a=tasbheelimit;
                setState(() {
                  b=tasbheename;
                  a=tasbheelimit;
                  c=0;
                });
                tasbheekaro.add(ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black, //background color of button
                      side: BorderSide(width:3, color:Colors.amberAccent), //border width and color
                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(30)
                      ),
                      //content padding inside button
                    ),
                    onPressed: (){
                      Get.to(screen1(a:c,b:"mm"));
                      if (!mounted) return;
                      setState(() {
                        b=tasbheename;
                        c=10;
                        print("tasbheekaro");
                      });

                    },
                    child: Row(
                      children: [
                        Text(tasbheename),
                        Text(tasbheelimit.toString()),
                      ],
                    )));

                name.clear();
                limit.clear();
                Navigator.pop(context);
              },
              child: Text("Add",style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Open Sans',
                  fontSize: 12),),),

          ],
        ),
      ),
    );
  }
}
