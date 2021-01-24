import 'package:carbon_dex/screens/intro.dart';
import 'package:flutter/material.dart';
import './screens/splashscreen.dart';
import './screens/forms.dart';

var routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => SplashScreen(),
  "/home": (BuildContext context) => IntroScreen(),
  "/form": (BuildContext context) => FormScreen(),
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
