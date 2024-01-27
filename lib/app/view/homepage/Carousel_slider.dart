import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Imageslider extends StatefulWidget {
  const Imageslider({super.key});

  @override
  State<Imageslider> createState() => _ImagesliderState();
}

class _ImagesliderState extends State<Imageslider> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
       "https://d3jmn01ri1fzgl.cloudfront.net/photoadking/webp_thumbnail/black-bar-be-cue-food-banner-template-9ffhfd5e8ddb36.webp",
      "https://www.shutterstock.com/image-vector/delicious-homemade-burger-chili-bbq-260nw-1804330342.jpg",
      "https://www.shutterstock.com/image-vector/delicious-hamburger-fries-banner-ads-260nw-1203026587.jpg",
      "https://www.shutterstock.com/image-vector/fried-chicken-burger-banner-ads-260nw-1519010060.jpg",
      "https://t3.ftcdn.net/jpg/02/94/31/20/360_F_294312040_Yw5wclSBbMXSQF42LQg74QUU9XhjfIM3.jpg",
    ];

    return Column(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
              height: 200,
              viewportFraction: 0.9,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
          items: imageList.map((imageUrl) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
       Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: _current == entry.key ? 20.0 : 8.0, // Change width for selected dot
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(4.0), // Adjust for desired curvature
                  color: _current == entry.key ? Colors.redAccent : Colors.grey,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
