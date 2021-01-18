import 'package:flutter/material.dart';
import '../routes.dart';
import 'BigMemory.dart';
import '../components/Background.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 50,
          padding: EdgeInsets.symmetric(vertical: 40.0),
          children: List.generate(7, (index) {
            return Column(
              children: <Widget> [
                Center(
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: new Image.asset('assets/images/me.jpeg')
                    )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'Item $index',
                    style: Theme.of(context).textTheme.headline5,
                  )
                )
              ]
            );
          })
        )
      )
    );
  }
}