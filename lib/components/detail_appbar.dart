import 'package:flutter/material.dart';
class DetailAppBar extends StatelessWidget {
  const DetailAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final Size size = MediaQuery.of(context).size;
  
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
      child: Container(
        height: size.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white.withOpacity(0.4),
                      
                    ),
                    borderRadius: BorderRadius.circular(15.0)),
                child: Icon(Icons.arrow_back_rounded,color: Colors.white,size: 30.0,),
              ),
            ),
            Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white.withOpacity(0.4),
                    // borderRadius: BorderRadius.circular(15.0)
                  ),
                  borderRadius: BorderRadius.circular(15.0)),
              child: Icon(Icons.favorite_border_rounded,color: Colors.white,size: 30.0,),
            ),
          ],
        ),
      ),
    );
  }
}