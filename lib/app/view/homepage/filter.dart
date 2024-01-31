import 'package:flutter/material.dart';

class Filterall extends StatefulWidget {
  const Filterall({super.key});

  @override
  State<Filterall> createState() => _FilterallState();
}

class _FilterallState extends State<Filterall> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      height: 40,
      child: ListView(
        padding: EdgeInsets.all(5),
        scrollDirection: Axis.horizontal,
        itemExtent:MediaQuery.of(context).size.width/3.5,
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.only(left: 5, right:5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 0.5,
                  offset: Offset(0, 0.5), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.filter_alt_outlined,
                  color: const Color.fromARGB(255, 53, 53, 53),
                  size: 15,
                ),
                Text(
                  "Filter",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                    size:20,
                  ),
                 ],
            ),
          ),  

          Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.only(left: 5, right:5),
        
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 0.5,
                  offset: Offset(0, 0.5), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.sort_outlined,
                  color: const Color.fromARGB(255, 53, 53, 53),
                  size: 15,
                ),
                Text(
                  "Sort",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    color: Colors.black,
                    size: 20,
                  ),
                 ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.only(left: 5, right:5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 0.5,
                  offset: Offset(0, 0.5), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.location_city,
                  color: Color.fromARGB(255, 234, 233, 233),
                  size: 15,
                ),
                Text(
                  "Nearby",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 238, 238, 238),
                  ),
                ),
                  Icon(
                    Icons.close_sharp,
                    color: const Color.fromARGB(255, 223, 223, 223),
                    size:20,
                  ),
                 ],
            ),
          ),  

          Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.only(left: 5, right:5),
         
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 0.5,
                  offset: Offset(0, 0.5), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.local_fire_department_outlined,
                  color: const Color.fromARGB(255, 53, 53, 53),
                  size: 15,
                ),
                Text(
                  "Pure Veg",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    color: Colors.black,
                    size: 20,
                  ),
                 ],
            ),
          ),
       
        
        ],
      ),
    );
  }
}