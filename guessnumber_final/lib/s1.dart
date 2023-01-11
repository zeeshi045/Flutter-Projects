import 'package:flutter/material.dart';
class screen1 extends StatefulWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Guess Number',style:TextStyle(color:Colors.amber,fontSize: 25,)),
        centerTitle: true,
      ),
      body:Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/reset.jpg"),
              fit: BoxFit.cover),
        ),

        child: Column(

          children: [
            SizedBox(
              height: 230,
            ),
            Row(
              children: [
                ElevatedButton(
                  child: CircleAvatar(
                    radius: 130,
                    backgroundColor: Colors.transparent,

                    child: ClipOval(
                      child: Image.asset("images/pl.png",
                      ),
                    ),
                  ),
                  onPressed: () { Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => screen1()),
                  );},
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(100, 100),
                    shape: const CircleBorder(),
                    backgroundColor: Colors.amber,
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  child: CircleAvatar(
                    radius: 130,
                    backgroundColor: Colors.transparent,

                    child: ClipOval(
                      child: Image.asset("images/res.jpeg",

                      ),


                    ),
                  ),
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(100, 100),
                    shape: const CircleBorder(),
                    backgroundColor: Colors.amber,
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),




          ],

        ),
      ),


    );
  }
}

