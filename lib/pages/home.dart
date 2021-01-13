import 'package:flutter/material.dart';
import 'second.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Open route Second'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Second()),
            );
          },
        ),
      ),
    );
  }
}