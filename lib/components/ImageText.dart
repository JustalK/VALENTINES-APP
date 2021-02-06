import 'package:flutter/material.dart';
import './Background.dart';

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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(40.0),
                      child: new Image.asset(widget.pathImage)
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
                          child: Text(widget.text)
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
    );
  }
}