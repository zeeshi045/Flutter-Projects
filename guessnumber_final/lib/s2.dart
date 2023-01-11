import 'package:flutter/material.dart';
import 'package:guessnumber_final/showresult.dart';
class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  bool _visible=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Guess Number',),
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
            SizedBox(height: 10,),
            Center(child: TextButton(onPressed: (){
              setState(() { _visible=!_visible; });

            }, child: Text('Gernate Number',style: TextStyle(
              color: Colors.white
            ),),
              style: ElevatedButton.styleFrom(

                backgroundColor: Colors.deepPurple,
              ),

            ),
            ),

            SizedBox(height: 100,),
            Text('Try'),
            SizedBox(height: 200,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Visibility(
                  visible:_visible ,
                  child: TextButton(onPressed: (){}, child:Text('5',style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(

                      backgroundColor: Colors.deepPurple,
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Visibility(
                  visible:_visible ,
                  child: TextButton(onPressed: (){

                  }, child:Text('5',style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(

                      backgroundColor: Colors.deepPurple,
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Visibility(
                  visible:_visible ,
                  child: TextButton(onPressed: (){}, child:Text('5',style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(

                      backgroundColor: Colors.deepPurple,
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Visibility(
                  visible:_visible ,
                  child: TextButton(onPressed: (){}, child:Text('5',style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(

                      backgroundColor: Colors.deepPurple,
                    ),
                  ),
                ),


              ],
            ),
SizedBox(height: 250,),
            Row(
              children: [
                TextButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => showres()),
                  );
                }, child: Text('Show Result',style: TextStyle(
                    color: Colors.white
                ),),
                  style: ElevatedButton.styleFrom(

                    backgroundColor: Colors.deepPurple,
                  ),

                ),
                Spacer(),
                TextButton(onPressed: (){}, child: Text('Retry',style: TextStyle(
                    color: Colors.white
                ),),
                  style: ElevatedButton.styleFrom(

                    backgroundColor: Colors.deepPurple,
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
