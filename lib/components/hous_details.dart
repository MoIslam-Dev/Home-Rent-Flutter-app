import 'package:flutter/material.dart';
import 'package:home_rental/models/house.dart';

class HousDetails extends StatefulWidget {
  final House house;
  HousDetails({required this.house});

  @override
  State<HousDetails> createState() => _HousDetailsState();
}

class _HousDetailsState extends State<HousDetails> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        
        shrinkWrap: true,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 30.0, left: 30.0, right: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$${widget.house.price.toInt().toStringAsFixed(3)}',
                      style: TextStyle(
                          fontSize: 28.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '${widget.house.address}',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black.withOpacity(0.4)),
                    ),
                  ],
                ),
                Text(
                  '${widget.house.time} hours ago',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.0, bottom: 30.0),
            child: Text(
              'House Information',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 130.0,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.0, bottom: 30.0),
                  child: Container(
                    width: 100.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.4))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${widget.house.sqFeet.toString()}   ",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Square foot  ",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.0, bottom: 30.0),
                  child: Container(
                    width: 100.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.4))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${widget.house.bedRooms}   ",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "BedRooms  ",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.0, bottom: 30.0),
                  child: Container(
                    width: 100.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.4))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${widget.house.bathRooms}   ",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Bathrooms ",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.0, bottom: 30.0),
                  child: Container(
                    width: 100.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.4))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${widget.house.garages.toString()}   ",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Garages",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 30.0,right: 30.0,bottom: 250.0),
          child: Text('${widget.house.description}',style: TextStyle(
            color: Colors.black.withOpacity(0.4),height: 1.5 
          ),),
          
          )
        ],
      ),
    );
  }
}
