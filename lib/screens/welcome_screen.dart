import 'package:flutter/material.dart';
import 'package:home_rental/screens/login_screen.dart';
import 'package:custom_fade_animation/custom_fade_animation.dart';

class Welcome_Screen extends StatelessWidget {
  const Welcome_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                  child: Opacity(
                opacity: 0.2,
                child: Image.asset(
                  'assets/images/background-welcome_screen.jpg',
                  fit: BoxFit.fill,
                ),
              )),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: FadeAnimation(1,CircleAvatar(
                        radius: 90.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/images/Logo.jpg'),
                      )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                   FadeAnimation(1.3, Text(
                      'Welcome !',
                      style: TextStyle(
                          fontSize: 40.0, fontWeight: FontWeight.bold),
                    )),
                    SizedBox(
                      height: 15,
                    ),
                    FadeAnimation(1.6,Text(
                      'One Click To Find Your House ',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.black.withOpacity(0.8)),
                    )),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Login_Screen()));
                      },
                      child: FadeAnimation(1.8,Container(
                        margin: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                        height: 50,
                        width: 100,
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.teal,
                    
                        ),
                        child: Center(
                          child: Text('Join Us',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),),
                        ),
                      )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
