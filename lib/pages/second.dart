import 'package:flutter/material.dart';
import '../routes.dart';
import 'home.dart';

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
                child: new Image.asset('assets/images/me.jpeg')
              ),
              Container(
                width: 160.0,
                color: Colors.blue,
              ),
              Container(
                width: 160.0,
                color: Colors.green,
              ),
              Container(
                width: 160.0,
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