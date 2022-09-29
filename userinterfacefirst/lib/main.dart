import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Scaffold(
        body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.start ,
        children:[
          Row(
         children: [
           SizedBox(width: 30,
           height: 80,),
           AutoSizeText('Hi, Den!',
          style:TextStyle(color: Colors.black,
            fontSize: 18,
          ),
        ),
           Spacer(),
           Icon(
             Icons.notifications,
             color:Colors.black87,
             size: 19.0,
           ),
           SizedBox(width: 34),
         ],
          ),
          Padding(

            padding:EdgeInsets.fromLTRB(30,0,0,0),//apply padding to all four sides
            child: AutoSizeText('What would you buy today ?',
            style:TextStyle(fontSize:13,
            ),
          ),
          ),
          Card(
            child: Column(
            children: [
              ListTile(
                title:  Text('Enjoy the special offer'),
              ),
              ListTile(
                title:  Text('up to 60%'),
                subtitle: Text(
                  'at 15-25 Mach 2021',
                  // style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
                ],

            ),
          ),

  ],
        ),
        ),
    );
  }
}
