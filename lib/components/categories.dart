import 'package:flutter/material.dart';
import 'package:home_rental/data/data.dart';

class Categories extends StatefulWidget {
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: 30.0, top: 20.0, bottom: 30.0),
      child: Container(
        height: size.height * 0.05,
        child: ListView.builder(
           physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                   currentIndex = index;
                   print(currentIndex);
                   
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  
                  width: size.width * 0.25,
                  
                  decoration: BoxDecoration(
                    
                      color:   currentIndex==index
                          ? Colors.blueGrey
                          : Colors.black12,
                      borderRadius: BorderRadius.circular(20.0)),
                      child: Center(child: Text(categoryList[index],)),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
