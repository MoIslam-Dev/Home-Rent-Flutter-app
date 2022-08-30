import 'package:flutter/material.dart';
class ButtomButton extends StatelessWidget {
  const ButtomButton({ Key? key }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.only(bottom: 30.0),
      child: Container(
        width: size.width *0.4,
        height: 60.0,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.8),
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey.withOpacity(0.6),
              offset: Offset(0.10,0.6),
              blurRadius: 10


            )
          ]
        ),
        child:
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
               
            Icon(Icons.map_outlined,color: Colors.white,size: 30.0,),
            Text('Map View',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w600),)

          
           ],
        
        ),
        
      ),
    );
  }
}