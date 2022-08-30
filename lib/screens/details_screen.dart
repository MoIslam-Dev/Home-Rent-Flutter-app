
import 'package:flutter/material.dart';
import 'package:home_rental/components/carouselImages.dart';
import 'package:home_rental/components/detail_appbar.dart';
import 'package:home_rental/components/details_button.dart';
import 'package:home_rental/components/hous_details.dart';
import 'package:home_rental/models/house.dart';
class DetailScreen extends StatefulWidget {
  late House house;
  DetailScreen({required this.house});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Stack(
                
                children: [
                  CaraouselImages(imagesListUrl: widget.house.moreImagesUrl),
                  DetailAppBar(),
                ],
              ),
              HousDetails(house: widget.house),
            ],
          ),
           DetailsButton(),
        ],
         
      ),
     
      
    );
  }
}