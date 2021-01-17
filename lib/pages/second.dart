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
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                child: CircleAvatar(
                                  radius: 50.0,
                                  backgroundColor: Colors.transparent,
                                  backgroundImage: AssetImage('assets/images/me.jpeg'),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [ 
                                  Text('2 January 2020'),
                                  Container(
                                    width: (MediaQuery.of(context).size.width - 200),
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 10.0),
                                      child: Text('Tsadasdas dasdas das das das d sad asd as dsa das d asdsa das d sad sada sdfs dfs df sdfsdf  sdfs dfs')
                                    )
                                  )
                                ]
                              ),
                            ]
                          ),
                        )
                      )
                    )
                  ]
                )
              ),
            ],
          ),
      )
    );
  }
}