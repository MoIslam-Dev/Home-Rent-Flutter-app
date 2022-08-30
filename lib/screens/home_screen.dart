import 'package:flutter/material.dart';
import 'package:home_rental/components/bottun.dart';
import 'package:home_rental/components/categories.dart';
import 'package:home_rental/components/custom_appbar.dart';
import 'package:home_rental/components/houses.dart';
class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  
      Stack(
        alignment: Alignment.bottomCenter,
        children : [
          Column(
          children: [
            Custom_Appbar(),
            Categories(),
            Houses(),
          ],
        ),
        ButtomButton(),
        ] ,
      ),
      
    );
  }
}