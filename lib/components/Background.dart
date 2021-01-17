import 'package:flutter/material.dart';

class Background extends StatefulWidget {
  final Widget child;

  Background({Key key, this.child}) : super(key: key);

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
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.pink,
              Colors.yellow,
              Colors.red
            ]
          ),
        ),
        child: widget.child
      )
    );
  }
}