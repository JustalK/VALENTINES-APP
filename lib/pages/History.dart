import 'package:flutter/material.dart';
import '../components/Background.dart';
import '../components/CardImageText.dart';

class History extends StatelessWidget {
  List<Widget>getAllCards() {
    List<Widget> childs = [];

    List<CardObject> cards = [
      CardObject('Once upon a time', 'Certainly the first picture you ever saw of me and a very bad picture against the light. I am certified bad cameraman.', 'assets/images/history_001.jpeg'),
      CardObject('14 September 2018', 'It will be the first time, I will be able to pass time with you. I will never forget that day. I did not want to move. It was raining, I was tired, it was the middle of the week. I just wanted to relax that night. But in the end, I chose to go and see who Diane is. And it will be the start of our lifetime story', 'assets/images/14_SEPT_2018.jpeg'),
      CardObject('01 October 2018', 'When I am not with you, I will chat with you, send you picture of my daily. You will soon become the center of my life.', 'assets/images/01_OCTOBER_2018.jpeg'),
      CardObject('8 January 2020', 'I will enjoy every weekend with you. I will love waking up by your side. I will miss you in the week. And this increadible feeling will grow up over the following week.', 'assets/images/10_OCTOBER_2018.jpeg'),
      CardObject('2 January 2020', '1 asdasdasd asd as d sad a dsa d assd as d ad asd', 'assets/images/history_004.jpeg'),
      CardObject('4 January 2020', '2 asdasdasd asd as d sad a dsa d assd as d ad asd', 'assets/images/history_005.jpeg'),
      CardObject('6 January 2020', '3 asdasdasd asd as d sad a dsa d assd as d ad asd', 'assets/images/history_006.jpeg'),
      CardObject('8 January 2020', '4 asdasdasd asd as d sad a dsa d assd as d ad asd', 'assets/images/history_007.jpeg'),
      CardObject('8 January 2020', '4 asdasdasd asd as d sad a dsa d assd as d ad asd', 'assets/images/history_008.jpeg'),
      CardObject('8 January 2020', '4 asdasdasd asd as d sad a dsa d assd as d ad asd', 'assets/images/history_009.jpeg'),
      CardObject('8 January 2020', '4 asdasdasd asd as d sad a dsa d assd as d ad asd', 'assets/images/history_010.jpeg'),
      CardObject('8 January 2020', '4 asdasdasd asd as d sad a dsa d assd as d ad asd', 'assets/images/history_011.jpeg'),
      CardObject('8 January 2020', '4 asdasdasd asd as d sad a dsa d assd as d ad asd', 'assets/images/history_012.jpeg'),
      CardObject('8 January 2020', '4 asdasdasd asd as d sad a dsa d assd as d ad asd', 'assets/images/history_013.jpeg'),
      CardObject('8 January 2020', '4 asdasdasd asd as d sad a dsa d assd as d ad asd', 'assets/images/history_014.jpeg'),
      CardObject('8 January 2020', '4 asdasdasd asd as d sad a dsa d assd as d ad asd', 'assets/images/history_015.jpeg'),
      CardObject('8 January 2020', '4 asdasdasd asd as d sad a dsa d assd as d ad asd', 'assets/images/history_016.jpeg'),
      CardObject('8 January 2020', '4 asdasdasd asd as d sad a dsa d assd as d ad asd', 'assets/images/history_017.jpeg'),
      CardObject('8 January 2020', '4 asdasdasd asd as d sad a dsa d assd as d ad asd', 'assets/images/history_018.jpeg'),
      CardObject('8 January 2020', '4 asdasdasd asd as d sad a dsa d assd as d ad asd', 'assets/images/history_019.jpeg'),
      CardObject('8 January 2020', '4 asdasdasd asd as d sad a dsa d assd as d ad asd', 'assets/images/history_020.jpeg')
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