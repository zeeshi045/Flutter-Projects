import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: BottomScreen());
  }
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.orange,
                Colors.white,
              ],
            )),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                    AutoSizeText(
                      'Hello',
                      style: TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontSize: 14,
                      ),
                    ),
                    // Icon(
                    // Icons.notifications,
                    // color: Colors.black87,
                    // size: 19.0,
                    // ),

                Row(
                  children: [
                    AutoSizeText(
                      'Zeeshan Farooq',
                      style: TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundImage:AssetImage('images/dd.jpg') ,
                      radius: 20.0,
                    ),
                  ],
                ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                    height:45,

    child: Card(
    child: Row(
    // crossAxisAlignment: CrossAxisAlignment.center,
    // mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Icon(
        Icons.search,
        color: Colors.black87,
size: 20,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 19),
        child: AutoSizeText(
          'Search a doctor or health issue',
          style: TextStyle(
            color: Colors.black38,
            fontSize:13 ,
          ),
        ),
      ),
      ],
    ),
    ),
                    ),
                  ),
            SizedBox(width: 50,),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage:AssetImage('images/dd.jpg') ,
                  radius: 20.0,
                ),
                  SizedBox(width:90,),
                  CircleAvatar(
                    backgroundImage:AssetImage('images/dd.jpg') ,
                    radius: 20.0,
                  ),
               SizedBox(width: 80,),
                  CircleAvatar(
                    backgroundImage:AssetImage('images/dd.jpg') ,
                    radius: 20.0,
                  ),
                SizedBox(width: 70,),
                  CircleAvatar(
                    backgroundImage:AssetImage('images/dd.jpg') ,
                    radius: 20.0,
                ),

        ],
              ),
         Row(
           children: [
             AutoSizeText(
               'Covid 19',
               style: TextStyle(
                 color: Colors.black38,
                 fontSize:13,
               ),
             ),
             SizedBox(width: 73,),
             AutoSizeText(
               'Covid 19',
               style: TextStyle(
                 color: Colors.black38,
                 fontSize:13,
               ),
             ),
             SizedBox(width: 73,),
             AutoSizeText(
               'Covid 19',
               style: TextStyle(
                 color: Colors.black38,
                 fontSize:13,
               ),
             ),
             SizedBox(width: 55,),
             AutoSizeText(
               'Covid 19',
               style: TextStyle(
                 color: Colors.black38,
                 fontSize:13,
               ),
             ),
           ],
         ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoSizeText(
                      'Appointment Today',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                        fontSize: 14,
                      ),
                    ),
                    Spacer(),
                    AutoSizeText(
                      'See All',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize:13,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
            Container(
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.indigo,
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20,left: 20 ,top:10),
                child: Column(
                  children: [
                    Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:AssetImage('images/dd.jpg') ,
                            radius: 20.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,0,0,0),
                            child: Column(
                              children:[
                                AutoSizeText(
                                  'Dr. Muhammad Ali',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 60),
                                  child: AutoSizeText(
                                    'Dental Specialis',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          ],
                    ),
                    SizedBox(width: 30
                      ,
                    height:18,),
                    Container(
                      height: 40,
                      width: 300,
                      child: Card(
                        color:Colors.blueAccent[100],
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Icon(
                                Icons.view_day,
                                color: Colors.black87,
                                size: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: AutoSizeText(
                                'Monday,july 29',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Icon(
                                Icons.timelapse,
                                color: Colors.black87,
                                size: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: AutoSizeText(
                                '11:00 - 12:00 AM',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],

                        ),

                      ),
                    ),
                  ],
                ),
              ),
            ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: AutoSizeText(
                    '11:00 - 12:00 AM',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class BottomScreen extends StatefulWidget {
  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Cart',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.yellow,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
