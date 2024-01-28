import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height:MediaQuery.of(context).size.height/2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 2,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: ListView(
                        children: <Widget>[
                          ListTile(title:Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Text('Select Address',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),),
                          )),
                          ListTile(title:Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Text('Add New Address',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),),
                          
                          )),
                          ListTile(title: Text('Address 3')),
                          // Add more list tiles
                        ],
                      ),
                    );
                  },
                );
              },
              child: Container(
                margin: const EdgeInsets.only(left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: const Icon(
                        Icons.location_on,
                        color: Color.fromARGB(255, 35, 18, 29),
                        size: 20,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Dhaka, Bangladesh",
                      style: TextStyle(
                        color: Color.fromARGB(255, 76, 76, 76),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Color.fromARGB(255, 35, 18, 29),
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
         Container(
  margin: const EdgeInsets.only(right: 20),
  child: GestureDetector(
    onTap: () {
      // Handle the tap event here
      print("Notification Icon Tapped");
    },
    child: Stack(
      alignment: Alignment.topRight, // Align the badge at the top right
      children: [
        CircleAvatar(
          backgroundColor: Colors.transparent,
          child: const Icon(
            Icons.notifications,
            color: Color.fromARGB(255, 46, 45, 46),
            size: 25,
          ),
        ),
        Positioned( // Positioning the count
          right: 5,
          top: 3,
          child: Container(
            padding: EdgeInsets.all(1), // Padding inside the count bubble
            decoration: BoxDecoration(
              color: Colors.red, // Background color of the count bubble
              borderRadius: BorderRadius.circular(6), // Rounded corners
            ),
            constraints: BoxConstraints(
              minWidth: 12,
              minHeight: 12,
            ),
            child: Text(
              '5', // Notification count
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    ),
  ),
)

        ],
      ),
    );
  }
}