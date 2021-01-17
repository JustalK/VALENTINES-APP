import 'package:flutter/material.dart';
import '../routes.dart';
import 'BigMemory.dart';
import '../components/Background.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text('TITLE'),
            )
          ],
        )
      )
    );
  }
}