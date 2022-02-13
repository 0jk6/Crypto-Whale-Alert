import 'package:flutter/material.dart';

//This class implements a CircularProgressIndicator
//code is getting kinda messy, so I had to seperate this too from the main.dart file

class CircularLoader extends StatefulWidget{
	CircularLoaderState createState() => new CircularLoaderState();
}

class CircularLoaderState extends State<CircularLoader>{
	@override
	Widget build(BuildContext context){
		return Container(
      color: Colors.black,
			child: Center(
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.center,
					mainAxisAlignment: MainAxisAlignment.center,
					children: [
						Text("Fetching the latest information from the blockchain...", style: TextStyle(color: Colors.white)),
						
						Padding(padding: EdgeInsets.all(8)),

						Row(
							crossAxisAlignment: CrossAxisAlignment.center,
							mainAxisAlignment: MainAxisAlignment.center,
							children: <Widget>[
								Text("Loading...", style: TextStyle(fontSize: 16, color: Colors.white)),
								
								Padding(padding: EdgeInsets.only(right: 10)),
								
								CircularProgressIndicator(
									valueColor: AlwaysStoppedAnimation<Color>(Colors.amber)
								)
							],
						)


					],
				),
				
			)
		);
	}
}