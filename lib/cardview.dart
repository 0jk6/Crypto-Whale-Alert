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
						
						Text(
							"Following card shows the latest Whale transaction in the blockchain",
							style: new TextStyle(
								fontWeight: FontWeight.bold,
								fontSize: 18,
								backgroundColor: Colors.amber
							),

							textAlign: TextAlign.center,
						),

						Padding(padding: EdgeInsets.only(top:20.0)),
						
            //return the crypto card widget
						CryptoCardWidget(
							tweet: jsonData["message"]["tweet"], 
							hash: jsonData["message"]["hash"], 
							blockchain: jsonData["message"]["blockchain"],
							amount: (jsonData["message"]["amount"]).toString(),
							amount_usd: (jsonData["message"]["amount_usd"]).toString(),
							from_address: jsonData["message"]["from"],
							to_address: jsonData["message"]["to"],
						)


					],
				)
			)
		);
	}
}