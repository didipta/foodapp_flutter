import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/app/view/homepage/BottomNavigationBar.dart';
import 'package:foodapp/app/view/homepage/Carousel_slider.dart';
import 'package:foodapp/app/view/homepage/Header.dart';
import 'package:foodapp/app/view/homepage/apabar.dart';
import 'package:foodapp/app/view/homepage/category_widget.dart';
import 'package:foodapp/app/view/homepage/filter.dart';
import 'package:foodapp/app/view/homepage/product.dart';
import 'package:foodapp/app/view/homepage/restaurant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Appbar(),
      ),
      
      body: Container(
        padding: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Header(yourDataArrays: []),
             SizedBox(height: 20),
             
              Imageslider(),
              SizedBox(height: 20),
              Categories(),
              SizedBox(height: 20),
              Filterall(),
              SizedBox(height: 20),
              Restaurant(),
              SizedBox(height: 20),
              Product(),
              SizedBox(height: 20),
              Restaurant(),
              SizedBox(height: 20),
              Restaurant(),
              SizedBox(height: 20),
              Restaurant(),
              SizedBox(height: 20),
              Restaurant(),
            ],
          ),
        ),
      ),
   



    ) ;
  }
}