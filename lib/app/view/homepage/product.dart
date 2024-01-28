import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  // Sample data for Products
  final List<Map<String, dynamic>> _Products = [
    {
      'name': 'Kachchi Biriyani',
      'image': 'https://foodfusion.com/wp-content/uploads/2019/01/Kachay-Gosht-ki-Biryani-Recipe-by-Food-fusion-5.jpg',
      'description': 'loram ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet loram ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet',  
      'time': '30 min',
      'rating': 4.5,
      
    },
    {
      'name': 'Habib Biriyani',
      'image': 'https://i.ytimg.com/vi/AZ5dXCCmDIU/maxresdefault.jpg',
      'description': 'loram ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet loram ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet' ,
      'time': '30 min',
      'rating': 4.5,
      'type': 'Fast Food',
      'offer': '10% off',

    },
    {
      'name': 'Mutton Kacchi',
      'image': 'https://media-cdn.tripadvisor.com/media/photo-m/1280/15/ef/7f/00/mutton-kacchi-biryani.jpg',
      'description': 'loram ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet' ,
      'time': '30 min',
      'rating': 4.5,
      'type': 'Fast Food',
      'offer': '10% off',
    },
    {
      'name': 'Buffet Product',
      'image': 'https://bangladeshmonitor.com.bd/hotel_img/Holiday-Inn1.jpg',
      'description': 'loram ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet',
      'time': '30 min',
      'rating': 4.5,
      'type': 'Fast Food', 
      'offer': '30% off',
    },
    // More Products can be added here
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 0),
            child: Row(
              children: [
                Text(
                  'Top Products',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    // Handle the press event
                  },
                  child: Text('View All'),
                ),
              ],
            ),
          ),
 Container(
  height: 260,
  padding: EdgeInsets.symmetric(horizontal: 10.0),
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: _Products.length,
    itemBuilder: (context, index) {
      final Product = _Products[index];
      return GestureDetector(
        onTap: () {
          // Handle the tap event
        },
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            elevation: 1.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(4.0)), // Adjust the radius
                    child: Image.network(
                      Product['image']!,
                      width: double.infinity,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      
                      children: <Widget>[
                        Row(
                          children: [
                            Text(
                              Product['name']!,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,

                              ),
                            ),
                            Spacer(),

                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow, size: 16),
                                Text(
                                  Product['rating'].toString(),
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                           
                            
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          Product['description'],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color.fromARGB(243, 167, 166, 166),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),

                                SizedBox(height: 8),
                                //quantity Add remove button
                                Row(
                                  children: [
                                   Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    color: const Color.fromARGB(255, 255, 255, 255),
  ),
  child: Row(
    children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.red, // Red background color
          borderRadius: BorderRadius.circular(30), // Fully rounded corners
        ),
        child: IconButton(
          onPressed: () {
            // Handle the press to decrease quantity
          },
          icon: Icon(Icons.remove, color: Colors.white),
          padding: EdgeInsets.all(2.0), // Uniform padding
          splashRadius: 20.0, // Adjust the splash radius of the button
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0), // Space between buttons and text
        child: Text(
          '1', // Replace with dynamic quantity value
          style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.red, // Red background color
          borderRadius: BorderRadius.circular(30), // Fully rounded corners
        ),
        child: IconButton(
          onPressed: () {
            // Handle the press to increase quantity
          },
          icon: Icon(Icons.add, color: Colors.white),
          padding: EdgeInsets.all(2.0), // Uniform padding
          splashRadius: 10.0, // Adjust the splash radius of the button
        ),
      ),
    ],
  ),
),
                            Spacer(),
                            Text(
                              Product['time'],
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey
                              ),
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
    },
  ),
)



        ],
      ),
    );
  }
}