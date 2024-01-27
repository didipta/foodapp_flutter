import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
List<Map<String, String>> categories = [
  {"name": "Burger", "imageUrl": "https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/1:1/w_2560%2Cc_limit/Smashburger-recipe-120219.jpg"},
  {"name": "Pizza", "imageUrl": "https://st.depositphotos.com/1003814/5052/i/950/depositphotos_50523105-stock-photo-pizza-with-tomatoes.jpg"},
  {"name": "Sushi", "imageUrl": "https://natashaskitchen.com/wp-content/uploads/2013/10/Sushi-Rice-and-California-Rolls-3-1.jpg"},
  {"name": "Pasta", "imageUrl": "https://www.indianhealthyrecipes.com/wp-content/uploads/2023/05/red-sauce-pasta-recipe.jpg"},
  {"name": "Salad", "imageUrl": "https://natashaskitchen.com/wp-content/uploads/2023/02/House-Garden-Salad-SQ.jpg"},
  {"name": "Tacos", "imageUrl": "https://feelgoodfoodie.net/wp-content/uploads/2017/04/Ground-Beef-Tacos-9.jpg"},
  {"name": "Steak", "imageUrl": "https://thebigmansworld.com/wp-content/uploads/2023/07/sirloin-steak-recipe.jpg"},
  {"name": "Seafood", "imageUrl": "https://www.licious.in/blog/wp-content/uploads/2022/02/shutterstock_1773695441-min-750x750.jpg"},
  {"name": "Sandwich", "imageUrl": "https://ichef.bbci.co.uk/food/ic/food_16x9_832/recipes/club_sandwich_16496_16x9.jpg"},
  {"name": "Ramen", "imageUrl": "https://thecozycook.com/wp-content/uploads/2023/02/Homemade-Ramen-f.jpg"},
  {"name": "Curry", "imageUrl": "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/113777-0b21d44.jpg?quality=90&resize=400,363"},
  {"name": "BBQ", "imageUrl": "https://zameenblog.s3.amazonaws.com/blog/wp-content/uploads/2021/07/2-10-1024x640.jpg"},
  {"name": "Desserts", "imageUrl": "https://cdn.loveandlemons.com/wp-content/uploads/2021/06/summer-desserts.jpg"},
  {"name": "Breakfast", "imageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQffR_Hp4dzHbXl4r1G94cCHaSdAmlPPOEhnw&usqp=CAU"},
  {"name": "Ice Cream", "imageUrl": "https://assets-global.website-files.com/5e9ebc3fff165933f19fbdbe/61b31c9d289e22335b6753b2_Ice%20Cream%202.jpg"},
  {"name": "Coffee", "imageUrl": "https://neurosciencenews.com/files/2023/06/coffee-brain-caffeine-neuroscincces.jpg"},
  {"name": "Juice", "imageUrl": "https://www.eatthis.com/wp-content/uploads/sites/4/2022/07/Fresh-squeezed-juices.jpg?quality=82&strip=all"},
  {"name": "Cocktails", "imageUrl": "https://www.instacart.com/company/wp-content/uploads/2023/01/birthday-cocktails-hero-500x500.jpg"},
  {"name": "Soup", "imageUrl": "https://sugarspunrun.com/wp-content/uploads/2021/09/Tomato-Soup-Recipe-1-of-1.jpg"}
];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20,),
       Container(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          padding: EdgeInsets.symmetric(horizontal: 10), // Adjust horizontal padding
          itemBuilder: (context, index) {
            return Container(
              width: 80, // Adjust item width as needed
              margin: EdgeInsets.only(
                left: index == 0 ? 10 : 30, // Add extra space for the first item
                right: index == categories.length - 1 ? 10 : 0, // Add extra space for the last item
              ),
              child: _buildCategoryItem(categories[index]),
            );
          },
        ),
      ),

        
      ],
    );
  }

}
  Widget _buildCategoryItem(Map<String, String> category) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              category["imageUrl"]!,
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(height: 5,),
       Text(
            category["name"]!,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 29, 29, 29),
            ),
          ),
        
      ],
    );
  }
