import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardImageText extends StatefulWidget {
  final String date;
  final String text;
  final String pathImage;

  CardImageText({Key key, this.date, this.text, this.pathImage}) : super(key: key);

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
          color: Colors.pink,
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
                    backgroundImage: AssetImage(widget.pathImage),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ 
                    Text(widget.date,
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(color: Colors.white),
                        fontSize: 16,
                        fontWeight: FontWeight.w900
                      ),
                    ),
                    Container(
                      width: (MediaQuery.of(context).size.width - 205),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(widget.text,
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(color: Colors.white),
                            fontSize: 16
                          ),
                        )
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