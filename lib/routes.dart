import 'package:flutter/material.dart';
import 'pages/second.dart';

class Routes {
  Route<dynamic> generateRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Second(),
      transitionDuration: Duration(milliseconds: 5000),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}