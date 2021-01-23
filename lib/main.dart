import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
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
        backgroundColor: Colors.lightGreen[800],
      ),
      body: Center(
        child: Text(
            "first iteration",
          style: TextStyle(
            fontSize: 48.0,
            fontWeight: FontWeight.w300,
            letterSpacing: 2.0,
            color: Colors.grey[850],
            fontFamily: 'Sacramento',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text(
          "click!",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.green[900],
          ),
        ),
        backgroundColor: Colors.lime,
      ),
    );
  }
}

