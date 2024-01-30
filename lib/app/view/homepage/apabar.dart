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
                  barrierColor: Color.fromARGB(255, 102, 102, 102).withOpacity(0.6
                  ),
                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),

                    ),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height:MediaQuery.of(context).size.height/2,
                      child: ListView(
      padding: EdgeInsets.all(10), // Add padding around the list
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(20),
          child: Text(
            'Select Address',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black54, // Change color if needed
            ),
          ),
        ),
        InkWell(
          onTap: () {
            // TODO: Handle Add New Address Tap
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: Colors.red, // Change as per your color scheme
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              'Add New Address',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Text color
              ),
            ),
          ),
        ),
        SizedBox(height: 20), // Spacing between widgets
        ListTile(
          leading: Icon(Icons.location_on), // Icon for the address
          title: Text('Address 1'),
          subtitle: Text('123, Main Street, City'), // Example address
          trailing: Icon(Icons.edit), // Icon to indicate editing option
          onTap: () {
            // TODO: Handle Address Tap
          },
        ),
        ListTile(
          leading: Icon(Icons.location_on),
          title: Text('Address 2'),
          subtitle: Text('456, Second Ave, City'),
          trailing: Icon(Icons.edit),
          onTap: () {
            // TODO: Handle Address Tap
          },
        ),
        ListTile(
          leading: Icon(Icons.location_on),
          title: Text('Address 3'),
          subtitle: Text('789, Third Blvd, City'),
          trailing: Icon(Icons.edit),
          onTap: () {
          }
        ),
        
        // Add more list tiles for additional addresses
      ],
    )
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