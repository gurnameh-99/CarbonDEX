import 'dart:io';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 10),
      // backgoundColor: Colors.white,
      alignment: Alignment.center,
      child: Scaffold(
        body:Column(
        // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Text(
              "Your total carbon footprint is",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontFamily: 'QuicksandB',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("4.0 tons",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  fontFamily: 'QuicksandS',
                ))
          ],
        ),
      ),
    );
  }
}