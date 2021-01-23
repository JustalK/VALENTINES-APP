import 'package:flutter/material.dart';

class CardObject {
  String date;
  String text;

  CardObject(this.date, this.text);

  String get getText {
    return this.text;
  }  

  String get getDate {
    return this.date;
  }
}

class CardImageText extends StatefulWidget {
  final String date;
  final String text;

  CardImageText({Key key, this.date, this.text}) : super(key: key);

  @override
  _CardImageTextState createState() => _CardImageTextState();
}

class _CardImageTextState extends State<CardImageText> {

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.red,
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
                    Text(widget.date),
                    Container(
                      width: (MediaQuery.of(context).size.width - 200),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(widget.text)
                      )
                    )
                  ]
                ),
              ]
          )
        )
      )
    );
  }
}