import 'package:flutter/material.dart';
import 'package:foodapp/app/view/Profilepage/profile_screen.dart';
import 'package:foodapp/app/view/homepage/BottomNavigationBar.dart';
import 'package:foodapp/app/view/homepage/home_screen.dart';

class Homemainscreen extends StatefulWidget {
  const Homemainscreen({super.key});

  @override
  State<Homemainscreen> createState() => _HomemainscreenState();
}

class _HomemainscreenState extends State<Homemainscreen> {
   int _selectedIndex = 0;
    // Current index for the bottom navigation bar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  // List of widgets to display in the body
  final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    
    Text('Index 2: School'),
    Text('Index 3: Settings'),
    Profilescreen()
    // Add more screens as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:AnimatedContainer(
        duration: Duration(milliseconds: 300),
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

       bottomNavigationBar:BottomNavigationBars(
          onItemTapped: _onItemTapped,
       ),
    );
  }
}