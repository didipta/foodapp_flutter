import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigationBars extends StatefulWidget {
  final Function(int) onItemTapped;

  const BottomNavigationBars({Key? key, required this.onItemTapped}) : super(key: key);
  

  @override
  State<BottomNavigationBars> createState() => _BottomNavigationBarsState();
}

class _BottomNavigationBarsState extends State<BottomNavigationBars> {

int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  CurvedNavigationBar(
        backgroundColor: Colors.transparent, // Make the background transparent
        buttonBackgroundColor: Colors.red, // Active icon's background color
        color: Color.fromARGB(255, 229, 229, 229), // Bar's background color
        height: 65,
        animationCurve: Curves.easeInOut, // Animation curve for the navigation bar
        animationDuration: Duration(milliseconds: 300), // Animation duration
        items: <Widget>[
          Icon(Icons.home, size:_selectedIndex == 0 ? 35 : 25, color: _selectedIndex == 0 ? Colors.white : Colors.grey),
          Icon(Icons.list_alt_sharp, size: _selectedIndex == 1 ? 35 : 25, color: _selectedIndex == 1 ? Colors.white : Colors.grey),
          Icon(Icons.shopping_cart, size: _selectedIndex == 2 ? 35 : 25, color: _selectedIndex == 2 ? Colors.white : Colors.grey),
          Icon(Icons.person, size: _selectedIndex == 3 ? 35 : 25, color: _selectedIndex == 3 ? Colors.white : Colors.grey),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          widget.onItemTapped(index);
          
        },
      );
  }
}
