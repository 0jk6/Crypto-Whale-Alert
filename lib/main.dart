import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

//import the Crypto Card Widget from the CryptoCardWidget.dart file
import 'CryptoCardWidget.dart';

void main(){
	runApp(
		new MaterialApp(
			home: new HomePage()
		)
	);
}

class HomePage extends StatefulWidget{
	@override
	HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{

	String url = "https://cryptowhalealert.herokuapp.com/api/v1/get";

	var jsonData;

	//get the data from the server
	Future<String> getData() async {
		http.Response response = await http.get(
			Uri.parse(url),
			headers: {
				"Accept" : "application/json"
			}
		);

		//decode json and add it to the list
		this.setState(() {
			jsonData = jsonDecode(response.body);
		});

		print(jsonData["message"]);
		
		return "success";
	}

	
	//make a http request at the start of the app, before anything gets rendered
	@override
	void initState(){
		this.getData();
	}

	@override
	Widget build(BuildContext context){
		return new Scaffold(
			appBar: AppBar(title: new Text("Crypto Whale Alert"), backgroundColor: Colors.lightGreen[700]),

			body: new Container(
				color: Colors.white,
				child: new Center(
					child: new Column(
						children: <Widget> [		

							Padding(padding: EdgeInsets.only(top:20.0)),
							
							new Text(
								"Following card shows the latest Whale transaction in the blockchain",
								style: new TextStyle(
									fontWeight: FontWeight.bold,
									fontSize: 18,
									backgroundColor: Colors.amber
								),

								textAlign: TextAlign.center,
							),

							Padding(padding: EdgeInsets.only(top:20.0)),

							new CryptoCardWidget(
								tweet: jsonData["message"]["tweet"], 
								hash: jsonData["message"]["hash"], 
								blockchain: jsonData["message"]["blockchain"],
								amount: (jsonData["message"]["amount"]).toString(),
								amount_usd: (jsonData["message"]["amount_usd"]).toString(),
								from_address: jsonData["message"]["from"],
								to_address: jsonData["message"]["to"],
							)
						]
					)
					
				)
			)
		);
	}	
}