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
            color: Colors.lightGreenAccent,
            child: Column(
            children: [
              ListTile(
                title:  AutoSizeText('Enjoy the special offer\nup to 60%',
                style: TextStyle(color: Colors.green,
                  fontSize: 20,
                ),
                ),
                subtitle: Text(
                  'at 15-25 March 2021',
                ),
              ),
                ],
            ),
          ),
            Row(
              children:[
                SizedBox(width: 30,
                  height: 40,),
            AutoSizeText('Category',
              style: TextStyle(
                fontSize:15,
              ),
            ),
              Spacer(),
              AutoSizeText('See all',
                style: TextStyle(
                  fontSize:8,
                ),
              ),
                SizedBox(width: 34),
      ],
            ),
          Row(
            children: [
              Expanded(child:
              Card(
                child: Column(
                  children: [
                  Image.asset(
                  'images/str.jpg',
                    width: 60,
                    height: 60,
                  ),
                AutoSizeText('Fruit',
                  style: TextStyle(
                    fontSize:8,
                  ),),
                  ],
                ),
              ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(child:
              Card(
                child: Column(
                  children: [
                    Image.asset(
                      'images/str.jpg',
                      width: 60,
                      height: 60,
                    ),
                    AutoSizeText('Fruit',
                      style: TextStyle(
                        fontSize:8,
                      ),),
                  ],
                ),
              ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child:
              Card(
                child: Column(
                  children: [
                    Image.asset(
                      'images/str.jpg',
                      width: 60,
                      height: 60,
                    ),
                    AutoSizeText('Fruit',
                      style: TextStyle(
                        fontSize:8,
                      ),),
                  ],
                ),
              ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(child:
              Card(
                child: Column(
                  children: [
                    Image.asset(
                      'images/str.jpg',
                      width: 60,
                      height: 60,
                    ),
                    AutoSizeText('Fruit',
                      style: TextStyle(
                        fontSize:8,
                      ),),
                  ],
                ),
              ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          Row(
            children:[
              SizedBox(width: 30,
                height: 40,),
              AutoSizeText('Best Selling',
                style: TextStyle(
                  fontSize:15,
                ),
              ),
              Spacer(),
              AutoSizeText('See all',
                style: TextStyle(
                  fontSize:8,
                ),
              ),
              SizedBox(width: 34),
            ],
          ),
          
  ],
        ),
        ),
    );
  }
}
