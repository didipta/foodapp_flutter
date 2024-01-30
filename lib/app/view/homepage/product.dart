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
      'price': 250,
      'offer_price': '200',
      
    },
    {
      'name': 'Habib Biriyani',
      'image': 'https://i.ytimg.com/vi/AZ5dXCCmDIU/maxresdefault.jpg',
      'description': 'loram ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet loram ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet' ,
      'time': '30 min',
      'rating': 4.5,
      'type': 'Fast Food',
      'offer': '10% off',
      'price': 250,
      'offer_price': '200',

    },
    {
      'name': 'Mutton Kacchi',
      'image': 'https://media-cdn.tripadvisor.com/media/photo-m/1280/15/ef/7f/00/mutton-kacchi-biryani.jpg',
      'description': 'loram ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet' ,
      'time': '30 min',
      'rating': 4.5,
      'type': 'Fast Food',
      'offer': '10% off',
      'price': 220,
      'offer_price': '200',
    },
    {
      'name': 'Buffet Product',
      'image': 'https://bangladeshmonitor.com.bd/hotel_img/Holiday-Inn1.jpg',
      'description': 'loram ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet',
      'time': '30 min',
      'rating': 4.5,
      'type': 'Fast Food', 
      'offer': '30% off',
      'price': 250,
      'offer_price': '200',
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
          padding: const EdgeInsets.only(bottom: 5),
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
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
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
                       Spacer(),
                      //price add and offer price Show
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                           Text(
                              "৳ ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 42, 42, 42)
                              ),
                            ),
                            Text(
                              Product['offer_price'].toString(),
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 42, 42, 42)
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              Product['price'].toString(),
                              
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                      ),
                            Spacer(),
                            Icon(
                              Icons.timer,
                              color: Colors.grey,
                              size: 15,
                            ),
                            
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