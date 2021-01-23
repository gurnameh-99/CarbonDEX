import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CarbonDEX',
          style: TextStyle(
            fontSize: 26.0,
            fontWeight: FontWeight.w300,
            letterSpacing: 2.0,
            color: Colors.amber[100],
            fontFamily: 'Rock',
          ),
        ),
        centerTitle: true,
        // backgroundColor: Colors.lightGreen[800],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text('Hello', style: TextStyle(
              )),
            ],
          ),
          Column(
            children: <Widget>[
              FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent, 
                child: Text(
                  'GET STARTED',
                  style: TextStyle(
                    fontSize: 16.0,
                    // fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Sifonn',
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1000),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}