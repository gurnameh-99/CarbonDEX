import 'package:carbon_dex/screens/intro.dart';
import 'package:flutter/material.dart';
import './screens/splashscreen.dart';

var routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => SplashScreen(),
  "/home": (BuildContext context) => IntroScreen(),
};

void main() => runApp(
      MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.red, accentColor: Colors.yellowAccent),
        debugShowCheckedModeBanner: false,
        //home: SplashScreen(),
        initialRoute: '/',
        routes: routes,
      ),
    );
