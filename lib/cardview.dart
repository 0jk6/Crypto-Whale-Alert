import 'package:flutter/material.dart';

import 'cryptowidget.dart';


class CardView extends StatefulWidget{
	final jsonData;
	CardView({this.jsonData});

	CardViewState createState() => new CardViewState(jsonData: jsonData);
}

class CardViewState extends State<CardView>{
	var jsonData;

	CardViewState({this.jsonData});

	@override
	Widget build(BuildContext context){
		return Container(
      color: Color(0xff111111),
			child: new Center(
				child: new Column(
					children: <Widget>[

						Padding(padding: EdgeInsets.only(top:20.0)),
						
            //return the crypto card widget
						CryptoCardWidget(
							tweet: jsonData["title"], 
							hash: jsonData["hash"], 
							blockchain: jsonData["blockchain"],
							amount: (jsonData["amount"]).toString(),
							amount_usd: (jsonData["amount_usd"]).toString(),
							from_address: jsonData["from"],
							to_address: jsonData["to"],
						)


					],
				)
			)
		);
	}
}