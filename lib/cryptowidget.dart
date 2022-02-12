import 'package:flutter/material.dart';


class CryptoCardWidget extends StatelessWidget{

	final String tweet, hash, blockchain, amount, amount_usd, from_address, to_address;

	//add a constructor, that takes in tweet, hash, blockchain, and amount
	CryptoCardWidget({this.tweet, this.hash, this.blockchain, this.amount, this.amount_usd, this.from_address, this.to_address});
	
	@override
	Widget build(BuildContext context){
		return Container(
			child: Card(
				color: Colors.white,
				child: Container(
          padding: EdgeInsets.all(6),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						mainAxisAlignment: MainAxisAlignment.center,
						children: <Widget>[
							Text(
								this.tweet, 
								style: TextStyle(
									color: Colors.red, 
									fontWeight: FontWeight.bold,
									fontSize: 24.0,
									fontStyle: FontStyle.italic
								)
							),

							Padding(padding: EdgeInsets.only(bottom: 10)),

							Text(
								"Hash: " + this.hash,
								style: TextStyle(
									fontWeight: FontWeight.bold,
									fontSize: 16.0,
								)
							),

							Padding(padding: EdgeInsets.only(bottom: 10)),

							Text(
								"Blockchain: " + this.blockchain,
								style: TextStyle(
									fontWeight: FontWeight.bold,
									fontSize: 16.0,
								)	
							),

							Padding(padding: EdgeInsets.only(bottom: 10)),

							Text(
								"Amount: " + this.amount,
								style: TextStyle(
									fontWeight: FontWeight.bold,
									fontSize: 16.0,
								)	
							),
							
							Padding(padding: EdgeInsets.only(bottom: 10)),

							Text(
								"Amount in USD: " + this.amount_usd,
								style: TextStyle(
									fontWeight: FontWeight.bold,
									fontSize: 16.0,
								)	
							),
              
							Padding(padding: EdgeInsets.only(bottom: 10)),
              
              Text(
								"From address: " + this.from_address,
								style: TextStyle(
									fontWeight: FontWeight.bold,
									fontSize: 16.0,
								)	
							),

							Padding(padding: EdgeInsets.only(bottom: 10)),

              Text(
								"To address: " + this.to_address,
								style: TextStyle(
									fontWeight: FontWeight.bold,
									fontSize: 16.0,
								)	
							),

							Padding(padding: EdgeInsets.only(bottom: 10)),
							
						]
					)
				)
			)
		);
	}
}