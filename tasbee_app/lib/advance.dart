import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'advance.dart';
List<Widget> tasbe=[];
List<qu> ff=List.generate(tasbe.length, (index) => qu('${b[index]}'));
int a=0;
String b="";
int c=0;
class advance extends StatefulWidget {
  const advance({Key? key}) : super(key: key);

  @override
  State<advance> createState() => _advanceState();
}

class _advanceState extends State<advance> {
  final name = TextEditingController();
  final limit = TextEditingController();
  String   tasbheename="";
  int  tasbheelimit=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: Text('Tasbee App'),
          backgroundColor: Colors.black87,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(

          gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.amber,
            Colors.black87,
          ],
          ),
    ),
          child:ListView.builder(itemCount: tasbe.length, itemBuilder: (context,index){
            return Card(
              child: ListTile(
                title: Column(
                  children: [
                    Column(
                      children:
                        tasbe,

                    ),
                    Text(ff[index].name),
                  ],
                ),
                leading: SizedBox(
                  width: 50,
                  height: 50,
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen(gg:ff[index],)));
                },
              ),
            );
          },

          )
        ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: TextButton(
          onPressed: () {
            AlertDialog alert = AlertDialog(
              title:Column(
                  children: [
                  Text('Enter Tasbe name'),
              TextField(
                controller:  name,
                decoration: InputDecoration(
                  hintText: "Astaghfirullah",
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                      onPressed:(){
                        name.clear();
                      },
                      icon: const Icon(Icons.clear_rounded)
                  ),

                ),


              ),


              Text('Enter Tasbe Limit'),
              TextField(

                controller:  limit,
                decoration: InputDecoration(
                  hintText: "10000",
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                      onPressed:(){
                        limit.clear();
                      },
                      icon: const Icon(Icons.clear_rounded)
                  ),
                ),
              ),

              ],
            ),

              actions: [
                TextButton(
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
                    tasbe.add(ElevatedButton(
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
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>advance()));
                  },
                  child: Text('Add',),
                ),

              ],
            );
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return alert;
              },
            );
          },
          child: Container(
            child:Center(child: Text('Custom',)),
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          ),
        ),
        elevation: 0,
      ),
    );
  }
}
class qu{
  String name="";
  String n="";
 qu(this.name);
}

class Screen extends StatefulWidget {
  final qu gg;
  const Screen({Key? key,required this.gg,}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title:Text('Tasbeeh App',style: TextStyle(
fontWeight: FontWeight.bold,
fontSize: 30),

),

centerTitle: true,
backgroundColor: Colors.amberAccent,
),
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