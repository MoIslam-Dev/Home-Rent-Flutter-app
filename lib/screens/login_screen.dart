import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:custom_fade_animation/custom_fade_animation.dart';
import 'package:home_rental/screens/registration.dart';
import 'home_screen.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.teal.shade500,
          Colors.teal.shade300,
          Colors.teal.shade200
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80.0,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               FadeAnimation(1.3,   Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  )),
                  SizedBox(
                    height: 10.0,
                  ),
                 FadeAnimation(1.6, Text(
                    'Welcome Back',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60.0),
                    topRight: Radius.circular(60.0)),
              ),
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                   FadeAnimation(1.8, Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 95, 74, 3),
                                blurRadius: 20)
                          ]),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey.shade200))),
                            child: TextField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  hintText: 'Email or Phone Number',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey.shade200))),
                            child: TextField(
                              textAlign: TextAlign.center,
                              obscureText: true,
                              decoration: InputDecoration(
                                
                                  hintText: 'Password',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    )),
                    SizedBox(
                      height: 40,
                    ),
                   FadeAnimation(2, Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey),
                    )),
                    SizedBox(
                      height: 40,
                    ),
                   FadeAnimation(2.2, Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                        },
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    SizedBox(height: 10,),
                     FadeAnimation(2.2, Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>registration_Screen()));
                        },
                        child: Center(
                          child: Text(
                            'Create new  Account',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    SizedBox(
                      height: 40.0,
                    ),
                   FadeAnimation(2.4, Text(
                      'Continue With Social Media',
                      style: TextStyle(color: Colors.grey),
                    )),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: FadeAnimation(2.8,FacebookAuthButton(
                          style:
                              AuthButtonStyle(buttonType: AuthButtonType.icon),
                          onPressed: () {},
                        ))),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            child: FadeAnimation(3,GoogleAuthButton(
                          onPressed: () {},
                          style:
                              AuthButtonStyle(buttonType: AuthButtonType.icon),
                        ))),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            child:FadeAnimation(3.2, TwitterAuthButton(
                          onPressed: () {},
                          style:
                              AuthButtonStyle(buttonType: AuthButtonType.icon),
                        ))),
                      ],
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
