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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(40.0),
                        child: new Image.asset('assets/images/me.jpeg')
                      )
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 60.0),
                        child: Container(
                          decoration: BoxDecoration(color: Colors.red),
                          transform: Matrix4.translationValues(0.0, -60.0, 0.0),
                          child: Padding(
                            padding: EdgeInsets.all(40.0),
                            child: Text('sdsd s s s s s s s s sssdsds  sd sd dd sdsd d sd s dsd sd sd s sad asdsa das dsa asd sdsdsd')
                          )
                        )
                      )
                    ),
                    Center(
                      child: Text('Slide to the right ->'),
                    )
                  ]
                )
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