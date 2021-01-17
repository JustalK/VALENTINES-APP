import 'package:flutter/material.dart';
import '../routes.dart';
import 'home.dart';
import '../components/ImageText.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: (MediaQuery.of(context).size.width),
                child: ImageText()
              ),
              Container(
                width: (MediaQuery.of(context).size.width),
                child: ImageText()
              ),
              Container(
                width: (MediaQuery.of(context).size.width),
                color: Colors.green,
              ),
              Container(
                width: (MediaQuery.of(context).size.width),
                color: Colors.yellow,
              ),
              Container(
                width: 160.0,
                color: Colors.orange,
              ),
            ],
          ),
      )
    );
  }
}