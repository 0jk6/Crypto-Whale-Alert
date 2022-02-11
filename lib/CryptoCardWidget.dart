import 'package:flutter/material.dart';


class CryptoCardWidget extends StatelessWidget{

	final String tweet, hash, blockchain, amount, amount_usd, from_address, to_address;

	//add a constructor, that takes in tweet, hash, blockchain, and amount
	CryptoCardWidget({this.tweet, this.hash, this.blockchain, this.amount, this.amount_usd, this.from_address, this.to_address});
	
	@override
	Widget build(BuildContext context){
		return new Container(
			child: new Card(
				color: Colors.white,
				child: new Container(
					child: new Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						mainAxisAlignment: MainAxisAlignment.center,
						children: <Widget>[
							new Text(
								"Title: " + this.tweet, 
								style: new TextStyle(
									color: Colors.red, 
									fontWeight: FontWeight.bold,
									fontSize: 24.0,
									fontStyle: FontStyle.italic
								)
							),

							new Padding(padding: EdgeInsets.only(bottom: 10)),

							new Text(
								"Hash: " + this.hash,
								style: new TextStyle(
									fontWeight: FontWeight.bold,
									fontSize: 16.0,
								)
							),

							new Padding(padding: EdgeInsets.only(bottom: 10)),

							new Text(
								"Blockchain: " + this.blockchain,
								style: new TextStyle(
									fontWeight: FontWeight.bold,
									fontSize: 16.0,
								)	
							),

							new Padding(padding: EdgeInsets.only(bottom: 10)),

							new Text(
								"Amount: " + this.amount,
								style: new TextStyle(
									fontWeight: FontWeight.bold,
									fontSize: 16.0,
								)	
							),
							
							new Padding(padding: EdgeInsets.only(bottom: 10)),

							new Text(
								"Amount in USD: " + this.amount_usd,
								style: new TextStyle(
									fontWeight: FontWeight.bold,
									fontSize: 16.0,
								)	
							),
              
              new Text(
								"From address: " + this.from_address,
								style: new TextStyle(
									fontWeight: FontWeight.bold,
									fontSize: 16.0,
								)	
							),

              new Text(
								"To address: " + this.to_address,
								style: new TextStyle(
									fontWeight: FontWeight.bold,
									fontSize: 16.0,
								)	
							)
							
						]
					)
				)
			)
		);
	}
}