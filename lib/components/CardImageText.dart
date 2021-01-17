import 'package:flutter/material.dart';

class CardImageText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.red,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/images/me.jpeg'),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ 
                    Text('2 January 2020'),
                    Container(
                      width: (MediaQuery.of(context).size.width - 200),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text('Tsadasdas dasdas das das das d sad asd as dsa das d asdsa das d sad sada sdfs dfs df sdfsdf  sdfs dfs')
                      )
                    )
                  ]
                ),
              ]
          )
        )
      )
    );
  }
}