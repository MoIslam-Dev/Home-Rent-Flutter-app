import 'package:flutter/material.dart';
class DetailsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   final Size size = MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.only(bottom: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
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
                   
                Icon(Icons.message_rounded,color: Colors.white,size: 30.0,),
                Text('Message',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w600),)

              
               ],
            
            ),
            
          ),
           Container(
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
                   
                Icon(Icons.call_rounded,color: Colors.white,size: 30.0,),
                Text('Call',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w600),)

              
               ],
            
            ),
            
          ),
        ],
      ),
    );
  }
}