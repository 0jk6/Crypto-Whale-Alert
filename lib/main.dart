import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'splashscreen.dart';


void main() {
	runApp(
		new MaterialApp(
      //disables debug banner on top
      debugShowCheckedModeBanner: false,

      //let's add the animated splash screen here
			home: SplashScreen()
		)
	);

  //SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
}
