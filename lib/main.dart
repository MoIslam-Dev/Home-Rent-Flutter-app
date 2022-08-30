import 'package:flutter/material.dart';
import 'package:home_rental/screens/home_screen.dart';
import 'package:home_rental/screens/login_screen.dart';
import 'package:home_rental/screens/welcome_screen.dart';



void main() {
  runApp( Welcome_screen());
}

class Welcome_screen extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(4
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white
      ),
      
      home: Welcome_Screen(),
      

    );
  }
  }
