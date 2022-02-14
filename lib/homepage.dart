import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

//custom classes import
import 'cardview.dart';
import 'loadingwidget.dart';




class HomePage extends StatefulWidget{
	HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{
	final String apiUrl = "https://raw.githubusercontent.com/0xhh/res/master/api.json";

	Future<String> getPosts() async {
		var response = await http.get(Uri.parse(apiUrl));

		return response.body;
	}


	@override
	Widget build(BuildContext context){
		return new Scaffold(
			appBar: AppBar(title: Text("Crypto Whale Alert"), backgroundColor: Color(0xff333333),),

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
							//return the listview that builds cards for the jsonData

              return ListView.builder(
                itemCount: jsonData == null ? 0 : jsonData.length,

                itemBuilder: (BuildContext context, int index){

                  //if jsonData is null, then return 503 server error
                  if(jsonData == null){
                    return Center(
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("503 server error"),
                        ],
                      )
                    );
                  }
                  else{
                    //else, create a list of cardviews
                    return CardView(jsonData: jsonData[index]);
                  }
                },
              );
						}
					},
				),

			)
		);
	}
}