import 'package:flutter/material.dart';
import 'package:home_rental/data/data.dart';
import 'package:home_rental/models/house.dart';
import 'package:home_rental/screens/details_screen.dart';

class Houses extends StatefulWidget {
  const Houses({Key? key}) : super(key: key);

  @override
  State<Houses> createState() => _HousesState();
}

class _HousesState extends State<Houses> {
  @override
  Widget build(BuildContext context) {
  
    return Expanded(
      child: ListView.builder(
        itemCount: houseList.length,
        itemBuilder: (context, index) {
          House house = houseList[index];
          return GestureDetector(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailScreen(house : house),
            
            ));},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: 
                            Image(image: AssetImage(house.imageUrl)),
                                
                                ),
                        Positioned(
                          right: 10.0,
                          top: 10.0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0)
                            ),
                            
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    house.isFav = !house.isFav;
                                    
                                  });
                                },
                                icon: house.isFav
                                    ? Icon(
                                        Icons.favorite_rounded,
                                        size: 30.0,
                                        color: Colors.red,
                                      )
                                    : Icon(
                                        Icons.favorite_border_rounded,
                                        size: 30.0,
                                        color: Colors.black,
                                      )),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10.0,),
                    Row(
                      children: [
                        Text(
                          "\$${house.price.toInt().toStringAsFixed(3)}",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                            child: Text(
                          '${house.address}',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w600,color: Colors.black.withOpacity(0.4)),
                        ))
                      ],
                    ),
                    SizedBox(height: 10.0,),
                    
                    Row(
                      children: [
                        Text(
                          "${house.bedRooms} bedRooms / ",
                          style: TextStyle(
                              fontSize: 15.0,fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "${house.bathRooms} BathRooms / ",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "${house.sqFeet.toString()} sqft  ",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
