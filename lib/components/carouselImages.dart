import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
class CaraouselImages extends StatefulWidget {
  final List<String> imagesListUrl;
  const CaraouselImages({ required this.imagesListUrl }) ;

  @override
  _CaraouselImagesState createState() => _CaraouselImagesState();
}

class _CaraouselImagesState extends State<CaraouselImages> {
    
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height*0.35,
      child: Carousel(
        autoplay: false,
        
        images: [
        AssetImage(widget.imagesListUrl[0]),
        AssetImage(widget.imagesListUrl[1]),
        AssetImage(widget.imagesListUrl[2]),
        AssetImage(widget.imagesListUrl[3]),
        AssetImage(widget.imagesListUrl[4]),
        AssetImage(widget.imagesListUrl[5]),

      ],),
      
    );
  }
}