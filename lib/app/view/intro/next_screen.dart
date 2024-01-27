import 'package:flutter/material.dart';
import 'package:foodapp/app/routes/router.dart';
import 'package:foodapp/base/constant.dart';
import 'package:introduction_screen/introduction_screen.dart';

class NextScreen extends StatefulWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  _NextScreenState createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  final List<PageViewModel> pages = [
    PageViewModel(
      title: "Pizza",
      body: "Delicious pizza with various toppings and cheese crust ",
      image: Container(width: double.infinity,height:double.infinity , child: Image.asset("assets/pizza-into.jpg",height:200,fit:BoxFit.fill)), // Center the image
      decoration: PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16),
        
      ),
    ),
    PageViewModel(
      title: "Burger",
      body: "Delicious burger with various toppings and cheese crust",
      image: Container(width: double.infinity,height:double.infinity,child: Image.asset("assets/Burger-into.jpg",height:200,fit:BoxFit.fill)), // Center the image
      decoration: PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16),
      ),
    ),
    PageViewModel(
      title: "Pasta",
      body: "Delicious pasta with various toppings and cheese crust",
      image: Container(width: double.infinity,height:double.infinity,child: Image.asset("assets/pasta-into.jpg",height:200,fit:BoxFit.fill)), // Center the image
      decoration: PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16),
      ),
    )
    // Add more pages as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: IntroductionScreen(
          globalBackgroundColor: Color.fromARGB(255, 237, 234, 234),
          pages: pages,
          onDone: () {
            Constant.sendToNext(context,Routes.loginRoute);
          },
          onSkip: () {
            Constant.sendToNext(context,Routes.loginRoute);
          },
          showSkipButton: true,
          skip: const Icon(Icons.skip_next,color:Colors.red),
          next: const Icon(Icons.arrow_forward,color:Colors.red),
          done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600,color:Colors.red)),
          dotsDecorator: const DotsDecorator(
            size: Size(10.0, 10.0),
            color: Colors.grey,
            activeSize: Size(22.0, 10.0),
            activeColor: Colors.red,
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
          ),
        ),
      ),
    );
  }
}
