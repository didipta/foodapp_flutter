import 'package:flutter/material.dart';
import 'package:foodapp/app/view/intro/next_screen.dart';
import 'package:foodapp/base/resizer/fetch_pixels.dart';
import 'package:foodapp/base/widget_utils.dart';

class Introscreen extends StatefulWidget {
  const Introscreen({super.key});

  @override
  State<Introscreen> createState() => _IntroscreenState();
}

class _IntroscreenState extends State<Introscreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
void initState() {
  super.initState();

  // Initialize animation controller with a 10-second duration
  _animationController = AnimationController(
    duration: Duration(seconds: 1),
    vsync: this,
  );

  // Create fade-in animation
  _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
    CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    ),
  );

  // Start animation after 1 second delay
  Future.delayed(Duration(seconds: 1), () {
    _animationController.forward();
  });

  // Navigate to another page after animation completion
  _animationController.addStatusListener((status) {
    if (status == AnimationStatus.completed) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NextScreen()),
      );
    }
  });
}


  @override
  Widget build(BuildContext context) {
    FetchPixels(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 237, 236, 235),
        ),
        child: Center(
          child: FadeTransition(
            opacity: _animation,
            child: Container(
              
              
              
              child: getAssetImage(
                "logo.png",
                FetchPixels.getPixelHeight(150),
                FetchPixels.getPixelHeight(100),
                boxFit: BoxFit.contain,
              
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}


