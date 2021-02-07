import 'package:flutter/material.dart';
import './Background.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageText extends StatefulWidget {
  final String text;
  final String pathImage;

  ImageText({Key key, this.text, this.pathImage}) : super(key: key);

  @override
  _ImageTextState createState() => _ImageTextState();
}

class _ImageTextState extends State<ImageText> {

    @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
              padding: 0.0,
              width: (MediaQuery.of(context).size.width),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: new Image.asset(widget.pathImage),
                        )
                      )
                    )
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          border: Border.all(color: Colors.white54),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 1.0),
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(widget.text,
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(color: Colors.white),
                            fontSize: 16
                          ),)
                        )
                      )
                    )
                  )
                ]
              )
            ),
    );
  }
}