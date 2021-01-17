import 'package:flutter/material.dart';
import '../routes.dart';
import 'home.dart';
import '../components/ImageText.dart';
import '../components/Background.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
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
                color: Colors.orange,
              ),
            ],
          ),
      )
    );
  }
}