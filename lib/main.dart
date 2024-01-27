import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodapp/app/routes/page.dart';
import 'package:foodapp/app/view/intro/intro_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure that Flutter bindings are initialized.
  
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, // Locks the device orientation to portrait mode
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: AppPages.routes,
    );
  }
}
