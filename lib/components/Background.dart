import 'package:flutter/material.dart';

class Background extends StatefulWidget {
  final Widget child;
  final double width;

  Background({Key key, this.child, this.width}) : super(key: key);

  @override
  _BackgroundState createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.pink,
              Colors.red,
              Colors.pink
            ]
          ),
        ),
        width: widget.width,
        child: widget.child
      )
    );
  }
}