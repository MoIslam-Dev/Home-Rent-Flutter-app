import 'package:flutter/material.dart';

class Custom_Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
  
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 40.0),
        child: Container(
          height: size.height * 0.22,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black.withOpacity(0.4),
                          
                        ),
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Icon(Icons.sort_rounded),
                  ),
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black.withOpacity(0.4),
                          // borderRadius: BorderRadius.circular(15.0)
                        ),
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Icon(Icons.insights_rounded),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'City',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.4), fontSize: 18.0),
                  ),
                  SizedBox(height: size.height * 0.01),
                  Text(
                    'Constantine',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
