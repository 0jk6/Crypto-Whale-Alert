import 'package:flutter/material.dart';


class CryptoCardWidget extends StatelessWidget{

	final String tweet, hash, blockchain, amount, amount_usd, from_address, to_address;

	//add a constructor, that takes in tweet, hash, blockchain, and amount
	CryptoCardWidget({this.tweet, this.hash, this.blockchain, this.amount, this.amount_usd, this.from_address, this.to_address});
	
	@override
	Widget build(BuildContext context){
		return Container(
      color: Color(0x22ffffff),
			child: Card(
				color: Colors.black,
				child: Container(
          padding: EdgeInsets.all(6),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						mainAxisAlignment: MainAxisAlignment.center,
						children: <Widget>[
              
              //Title or main tweet
              GetTextWidget(title: this.tweet, value: "", font_size: 24, font_color: Colors.red, font_weight: FontWeight.bold),
              Padding(padding: EdgeInsets.only(top:12)),

              //Hash of the transaction
							GetTextWidget(title: "Hash: ", value: this.hash, font_size: 16, font_color: Colors.white, font_weight: FontWeight.normal),
              Padding(padding: EdgeInsets.only(top:12)),

              //Type of Blockchain
							GetTextWidget(title: "Blockchain: ", value: this.blockchain, font_size: 16, font_color: Colors.white, font_weight: FontWeight.normal),
              Padding(padding: EdgeInsets.only(top:12)),

              //Amount of coins or tokens transferred
              GetTextWidget(title: "Amount: ", value: this.amount, font_size: 16, font_color: Colors.white, font_weight: FontWeight.normal),
              Padding(padding: EdgeInsets.only(top:12)),

              //Amount in USD
              GetTextWidget(title: "Amount in USD: ", value: this.amount_usd, font_size: 16, font_color: Colors.white, font_weight: FontWeight.normal),
              Padding(padding: EdgeInsets.only(top:12)),

              //Sender address
              GetTextWidget(title: "From: ", value: this.from_address, font_size: 16, font_color: Colors.white, font_weight: FontWeight.normal),
              Padding(padding: EdgeInsets.only(top:12)),

              //Receiver address
              GetTextWidget(title: "To: ", value: this.to_address, font_size: 16, font_color: Colors.white, font_weight: FontWeight.normal)							
						]
					)
				)
			)
		);
	}
}

class GetTextWidget extends StatelessWidget{
  final String title, value;
  final double font_size;
  final Color font_color;
  final FontWeight font_weight;

  GetTextWidget({this.title, this.value, this.font_size, this.font_color, this.font_weight});

  @override
  Widget build(BuildContext context){
    return Container(
      child:Row(
        children: [
          //adding flexible fixed the overflow issues
          Flexible(
            child: Text(
                (title + value),
                style: TextStyle(
                  fontWeight: font_weight,
                  fontSize: font_size,
                  color: font_color
                )
              ),
          ),
        ],
      )       
    );
  }
}