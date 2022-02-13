import 'package:flutter/material.dart';

//splash screen import
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'homepage.dart';

class SplashScreen extends StatefulWidget{
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>{
  @override
  Widget build(BuildContext context){
    return AnimatedSplashScreen(

      splash: SplashScreenCard(),
      nextScreen: HomePage(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.black,
    );
  }
}

class SplashScreenCard extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
        child: Card(
          color: Colors.black,
          child: Center(
            child: Row(
              
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                Text("Crypto Whale Alert", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                Padding(padding: EdgeInsets.only(right:10)),
                Icon(Icons.offline_bolt_outlined, color: Colors.amber),
              ]
              ,
            )
          ),
        ),
      );
  }
}