import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'cardview.dart';
import 'loadingwidget.dart';

void main() {
	runApp(
		new MaterialApp(
			home: HomePage()
		)
	);
}

class HomePage extends StatefulWidget{
	HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{
	final String apiUrl = "https://cryptowhalealert.herokuapp.com/api/v1/get";

	Future<String> getPosts() async {
		var response = await http.get(Uri.parse(apiUrl));

		return response.body;
	}


	@override
	Widget build(BuildContext context){
		return new Scaffold(
			appBar: AppBar(title: Text("Crypto Whale Alert"), backgroundColor: Colors.blueGrey),

			body: Container(
				//create a future builder, it takes two parameters
				//one is name of the function, in our case it is getPosts
				//second one is the builder, it takes build context and async snapshot

				child: FutureBuilder(
					future: getPosts(),
					builder: (BuildContext context, AsyncSnapshot snapshot){
						//AsyncSnapshot gives us the data when the future getPosts() gets resolved
						//lets use ListView builder to show the data

						//if data is null, return a loading widget, else return the list
						if(snapshot.data == null){
							//return the Circular loading widget
							return CircularLoader();
						}
						else{

							//snapshot will return a String from the http request, convert it to json
							var jsonData = jsonDecode(snapshot.data);

							//return the cardview
							return CardView(jsonData:jsonData);
						}
					},
				),

			)
		);
	}
}