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
    ),
    ),
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
    'Hello Den',
    style: TextStyle(
      color: Color.fromRGBO(204,119,115,0.9),
    fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    ),
      AutoSizeText(
        'Excited to cook something new today?',
        style: TextStyle(
          color: Colors.black38,
          fontSize: 15,

        ),
      ),
    // Icon(
    // Icons.notifications,
    // color: Colors.black87,
    // size: 19.0,
    // ),
      SizedBox(height: 10,),
    Container(
    height:90,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8),
        color: Color.fromRGBO(204,119,115,0.5),
    ),
    child: Padding(
    padding: const EdgeInsets.only(bottom: 20,left: 20 ,top:10),
    child: Column(
    children: [
    Row(
    children: [
      Icon(
        Icons.shopping_cart_outlined,
        color: Color.fromRGBO(204,119,115,0.9),
        size: 20,
      ),
    Padding(
    padding: const EdgeInsets.fromLTRB(20,0,0,0),
    child: Column(
    children:[
    AutoSizeText(
    "You have 12 recipes that \nyou haven't tried yet",
    style: TextStyle(
    color: Colors.black,
    fontSize: 14,
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(right: 72,top:5),
    child: AutoSizeText(
    'See Recipes',
    style: TextStyle(
      color: Color.fromRGBO(204,119,115,0.9),
      decoration: TextDecoration.underline,
    fontSize: 15,
    ),
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    ],
    ),
    ),
    ),
      SizedBox(height: 10,),
      Container(
        height: 210.0,
        // width: MediaQuery.of(context).size.width - 100.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),

            image: new DecorationImage(
              image: new AssetImage("images/img.jpg"),
              fit: BoxFit.fill,
            )
        ),
          child:Column(
              children: [
         Padding(
          padding: const EdgeInsets.only( top:15,left:30),
          child: Row(
            children: [
             Container(
               width:60,
          height: 20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
          color: Color.fromRGBO(204,119,115,0.9),
        ),
                 child: Padding(
                   padding: const EdgeInsets.only(left: 2 ,top: 2),
                   child: Text('Non Veg',
                     style: TextStyle(
                      color: Colors.white,
                       fontSize: 14,

                     ),
                   ),
                 ),

             ),
              Padding(
                padding: const EdgeInsets.only(left: 205),
                child: Icon(
                  Icons.zoom_out_map,
                  color: Colors.black,
                  size: 25,
                ),
              ),
          ],
          ),
        ),
                Padding(
                  padding: const EdgeInsets.only(right:170 ,top:88),
                  child: Text('Chicken Makhani \nSouth Special',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 217),
                  child: Text('30 Recipes | 1 Serving',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 9,

                    ),
                  ),
                ),
      ],
          ),
      ),
      SizedBox(height: 10,),
      Text('Trending Recipe',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18,

        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:Row(
          children: [
            Container(
              height: 150.0,
              width: 200,
              // width: MediaQuery.of(context).size.width - 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),

                  image: new DecorationImage(
                    image: new AssetImage("images/img.jpg"),
                    fit: BoxFit.fill,
                  )
              ),
              child:Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only( top:15,left:30),
                    child: Row(
                      children: [
                        Container(
                          width:60,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color.fromRGBO(204,119,115,0.9),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 2 ,top: 2),
                            child: Text('Non Veg',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,

                              ),
                            ),
                          ),

                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10,),
            Container(
              height: 150.0,
              width: 200,
              // width: MediaQuery.of(context).size.width - 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),

                  image: new DecorationImage(
                    image: new AssetImage("images/img.jpg"),
                    fit: BoxFit.fill,
                  )
              ),
              child:Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only( top:15,left:30),
                    child: Row(
                      children: [
                        Container(
                          width:60,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color.fromRGBO(204,119,115,0.9),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 2 ,top: 2),
                            child: Text('Fast Food',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,

                              ),
                            ),
                          ),

                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10,),
            Container(
              height: 150.0,
              width: 200,
              // width: MediaQuery.of(context).size.width - 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),

                  image: new DecorationImage(
                    image: new AssetImage("images/img.jpg"),
                    fit: BoxFit.fill,
                  )
              ),
              child:Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only( top:15,left:30),
                    child: Row(
                      children: [
                        Container(
                          width:60,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color.fromRGBO(204,119,115,0.9),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 2 ,top: 2),
                            child: Text('Veg',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,

                              ),
                            ),
                          ),

                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10,),
            Container(
              height: 150.0,
              width: 200,
              // width: MediaQuery.of(context).size.width - 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),

                  image: new DecorationImage(
                    image: new AssetImage("images/img.jpg"),
                    fit: BoxFit.fill,
                  )
              ),
              child:Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only( top:15,left:30),
                    child: Row(
                      children: [
                        Container(
                          width:60,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color.fromRGBO(204,119,115,0.9),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 2 ,top: 2),
                            child: Text('Tandori Special',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,

                              ),
                            ),
                          ),

                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
