import 'package:flutter/material.dart';
import '../routes.dart';
import 'home.dart';
import '../components/ImageText.dart';
import '../components/CardImageText.dart';

class Second extends StatelessWidget {
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
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: (MediaQuery.of(context).size.width),
                child: ImageText(text: 'sdsd s s s s s s s s sssdsds  sd sd dd sdsd d sd s dsd sd sd s sad asdsa das dsa asd sdsdsd')
              ),
              Container(
                width: (MediaQuery.of(context).size.width),
                child: ImageText(text: 'dsadasdsadsadsa d sad asd a da d sad as d sad asd as da sd asd a sd asd asdsa da')
              ),
              Container(
                width: (MediaQuery.of(context).size.width),
                color: Colors.transparent,
              ),
              Container(
                width: (MediaQuery.of(context).size.width),
                color: Colors.yellow,
              ),
              Container(
                width: (MediaQuery.of(context).size.width),
                height: (MediaQuery.of(context).size.height),
                color: Colors.orange,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: getAllCards()
                )
              ),
            ],
          ),
      )
    );
  }
}