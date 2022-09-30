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
                Colors.amber,
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
