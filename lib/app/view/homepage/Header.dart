// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  final yourDataArrays;
  
  const Header({
    Key? key,
    required this.yourDataArrays,
  }) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  void heandelcategory(id) {
    print(id);
  }
  
 
  @override
  Widget build(BuildContext context) {
    var yourDataArray=widget.yourDataArrays;
    
    return Container(
  
      width: double.infinity,

      decoration: BoxDecoration(
        
      
        // gradient: LinearGradient(
        //   colors: [
        //     Color.fromARGB(255, 184, 10, 65),
        //     Color.fromARGB(255, 32, 12, 47),
        //   ],
        //   begin: Alignment.topLeft,
        //   end: Alignment.bottomRight,
        // ),
        // borderRadius: BorderRadius.only(
        //   bottomLeft: Radius.circular(30),
        //   bottomRight: Radius.circular(30),
        // ),
      ),
      child:Column(

        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(
                  color: const Color.fromARGB(255, 42, 42, 42),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 52, 52, 52),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 255, 255, 255).withOpacity(1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          
              ],
      )
    );
  }
}