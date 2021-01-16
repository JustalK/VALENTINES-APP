import 'package:flutter/material.dart';
import '../routes.dart';
import 'second.dart';

class Home extends StatelessWidget {
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
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 72.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/images/me.jpeg'),
              )
            ),
            Center(
              child: Text('TITLE'),
            ),
            Container(
              child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sed risus erat. Curabitur convallis euismod turpis, sed mollis lorem gravida blandit. Fusce sed tempus nisl. Praesent ac urna quam. Vivamus nec tempus tortor.',
              textAlign: TextAlign.center),
              padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 40.0),
            ),
            Center(
              child: ElevatedButton(
                child: Text('Open route Second'),
                onPressed: () {
                  Navigator.of(context).push(Routes().generateRoute(Second(), 800));
                },
              ),
            )
          ],
        )
      )
    );
  }
}