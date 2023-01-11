import 'package:flutter/material.dart';
class showres extends StatefulWidget {
  const showres({Key? key}) : super(key: key);

  @override
  State<showres> createState() => _showresState();
}

class _showresState extends State<showres> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show_Result'),
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
            ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Center(child: TextButton(onPressed: (){}, child: Text('0 Tries Right out of 0',style: TextStyle(
                color: Colors.white,
              fontSize: 25,
            ),),
              style: ElevatedButton.styleFrom(

                backgroundColor: Colors.deepPurple,
              ),
            )
            ),
            SizedBox(height: 200,),
        TextButton(onPressed: (){}, child: Text('Add Data in Firebase',style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),),
          style: ElevatedButton.styleFrom(

            backgroundColor: Colors.deepPurple,
          ),
        ),
            SizedBox(height: 20,),
        TextButton(onPressed: (){}, child: Text('Add Data in SqlFilte',style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),),
          style: ElevatedButton.styleFrom(

            backgroundColor: Colors.deepPurple,
          ),
        ),

          ],
        ),
      ),
    );
  }
}
