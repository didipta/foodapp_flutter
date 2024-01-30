import 'package:flutter/material.dart';

class Restaurant extends StatefulWidget {
  const Restaurant({Key? key}) : super(key: key);

  @override
  _RestaurantState createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  // Sample data for restaurants
  final List<Map<String, dynamic>> _restaurants = [
    {
      'name': 'City Restaurant',
      'image': 'https://www.oprah.com/g/image-resizer?width=670&link=https://static.oprah.com/images/201302/orig/201302-orig-beautiful-chicken-600x411.jpg',
      'description': 'loram ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet loram ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet',  
      'time': '30 min',
      'rating': 4.5,
      'type': 'Fast Food',
       'offer': '20% off',
    },
    {
      'name': 'Habib Restaurant',
      'image': 'https://imageproxy.wolt.com/venue/6232faaafd94b762808350de/ebcc50b6-a903-11ec-8d84-92cd96cd4d02_habib3.jpg',
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
      'name': 'Buffet restaurant',
      'image': 'https://cosmosgroup.sgp1.digitaloceanspaces.com/news/6770417_best%20buffet%20restaurants%20Dhaka.jpg',
      'description': 'loram ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet',
      'time': '30 min',
      'rating': 4.5,
      'type': 'Fast Food', 
      'offer': '30% off',
    },
    // More restaurants can be added here
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
                  'Restaurants',
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
    itemCount: _restaurants.length,
    itemBuilder: (context, index) {
      final restaurant = _restaurants[index];
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
                      restaurant['image']!,
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
                              restaurant['name']!,
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
                                  restaurant['rating'].toString(),
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
                          restaurant['description'],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color.fromARGB(243, 167, 166, 166),
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                          ),
                        ),

                        SizedBox(height: 8),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               Row(
                          children: [
                            Icon(Icons.timer, color: Colors.grey, size: 16),
                            SizedBox(width: 5),
                            Text(
                              restaurant['time']!,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey
                              ),
                            ),
                            
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.fastfood, color: Colors.grey, size: 16),
                            SizedBox(width: 5),
                            Text(
                              restaurant['type']!,
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
                            Spacer(),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: Text(
                                restaurant['offer']!,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            )
                            
                          ],
                        )
                        
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