import 'package:flutter/material.dart';
import '../routes.dart';
import 'Menu.dart';
import '../components/Background.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 40.0),
                child: CircleAvatar(
                  radius: 72.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/me.jpeg'),
                )
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
                child: Text('Open asdasda'),
                onPressed: () {
                  Navigator.of(context).push(Routes().generateRoute(Menu(), 800));
                },
              ),
            )
          ],
        )
      )
    );
  }
}