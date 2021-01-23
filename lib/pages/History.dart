import 'package:flutter/material.dart';
import '../components/Background.dart';
import '../components/CardImageText.dart';

class History extends StatelessWidget {
  List<Widget>getAllCards() {
    List<Widget> childs = [];

    List<CardObject> cards = [
      CardObject('2 January 2020', '1 asdasdasd asd as d sad a dsa d assd as d ad asd'),
      CardObject('4 January 2020', '2 asdasdasd asd as d sad a dsa d assd as d ad asd'),
      CardObject('6 January 2020', '3 asdasdasd asd as d sad a dsa d assd as d ad asd'),
      CardObject('8 January 2020', '4 asdasdasd asd as d sad a dsa d assd as d ad asd'),
      CardObject('2 January 2020', '1 asdasdasd asd as d sad a dsa d assd as d ad asd'),
      CardObject('4 January 2020', '2 asdasdasd asd as d sad a dsa d assd as d ad asd'),
      CardObject('6 January 2020', '3 asdasdasd asd as d sad a dsa d assd as d ad asd'),
      CardObject('8 January 2020', '4 asdasdasd asd as d sad a dsa d assd as d ad asd')
    ];

    for(CardObject card in cards){
      childs.add(Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
          height: 150,
          child: CardImageText(date: card.getDate, text: card.getText)
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