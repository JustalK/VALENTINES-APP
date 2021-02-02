import 'package:flutter/material.dart';
import 'package:valentines_day/components/Background.dart';
import 'package:valentines_day/components/CardImageText.dart';
import 'package:valentines_day/podos/CardObject.dart';
import 'package:valentines_day/utils/loader.dart';

class History extends StatelessWidget {
  List<Widget>getAllCards() {
    List<Widget> childs = [];

    print(parseHistoryJson());
    List<CardObject> cards = [
      CardObject('23 September 2018', 'AAA AAA AAA', 'assets/images/2018_09_23.jpg'),
    ];

    for(CardObject card in cards){
      childs.add(Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
          height: 150,
          child: CardImageText(date: card.getDate, text: card.getText, pathImage: card.getPathImage)
          )
      ));
    }

    return childs;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: (MediaQuery.of(context).size.height),
        width: (MediaQuery.of(context).size.width),
        child: Background(
          padding: 50.0,
          width: (MediaQuery.of(context).size.width),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: getAllCards()
          )
        ),
      ),
    );
  }
}