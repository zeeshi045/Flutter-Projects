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
                Colors.white10,
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
                        color: Colors.indigo,
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
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: Icon(
                        Icons.waving_hand,
                        color: Colors.yellow,
                        size: 20,
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.lightGreen.shade50,
                      ),
                    height:33,

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
            SizedBox(width: 50,),
            Row(
              children: [
                CircleAvatar(

                  backgroundImage:AssetImage('images/covid.png') ,
                  radius: 20.0,
                ),
                  SizedBox(width:90,),
                  CircleAvatar(
                    backgroundImage:AssetImage('images/hos.jpg') ,
                    radius: 20.0,
                  ),
               SizedBox(width: 80,),
                  CircleAvatar(
                    backgroundImage:AssetImage('images/abulas.jpg') ,
                    radius: 20.0,
                  ),
                SizedBox(width: 70,),
                  CircleAvatar(
                    backgroundImage:AssetImage('images/pill.jpg') ,
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
               'Hospital',
               style: TextStyle(
                 color: Colors.black38,
                 fontSize:13,
               ),
             ),
             SizedBox(width: 70,),
             AutoSizeText(
               'Ambulance',
               style: TextStyle(
                 color: Colors.black38,
                 fontSize:13,
               ),
             ),
             SizedBox(width: 61,),
             AutoSizeText(
               'Pill',
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
                borderRadius: BorderRadius.circular(14),
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
                      width: 283,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
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
                    'Top Doctor',
                    style: TextStyle(
                      color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
            SizedBox(height: 5,),
            Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.lightGreen.shade50,
              ),
              child: Row(
                  children: [
              Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 90,
                width: 90,
                // decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(30),
                //     color: Color.fromRGBO(206, 244, 206, 1)),
                child: Image.asset(
                  'images/zee.jpeg',
                  width: 20,
                  height: 20,
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              AutoSizeText(
              "Dr Muhammad Zeeshan",
              style: TextStyle(
                  color: Colors.indigo,
                  fontSize:17,
                  fontWeight: FontWeight.bold),
            ),
            AutoSizeText(
              "Heart Specialis  -  San Fransisco",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 12,
                  fontWeight: FontWeight.w200),

            ),
            SizedBox(
              height: 10,
            ),
                Row(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Colors.yellow,
                      size: 14,
                    ),
                    SizedBox(width:8,),
                    AutoSizeText(
                      "4.0  -  50 Reviews",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12,
                          fontWeight: FontWeight.w200),

                    ),
                  ],
                ),
              ],
            ),
              ],
            ),
                  ],
              ),
            ),
                SizedBox(height:10),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.lightGreen.shade50,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              ),
                          child: Image.asset(
                            'images/df.jpg',
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                "Dr Kasturi",
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize:17,
                                    fontWeight: FontWeight.bold),
                              ),
                              AutoSizeText(
                                "Heart Specialis  -  San Fransisco",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w200),

                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.yellow,
                                    size: 14,
                                  ),
                                  SizedBox(width:8,),
                                  AutoSizeText(
                                    "4.4  -  50 Reviews",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w200),

                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
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
      'Chat',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
    Text(
      'Setting',
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
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
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
