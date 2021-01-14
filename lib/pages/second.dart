import 'package:flutter/material.dart';
import '../routes.dart';
import 'home.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(Routes().generateRoute(Home(), 800));;
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}