import 'package:carbon_dex/screens/intro.dart';
import 'package:carbon_dex/screens/simpleform.dart';
import 'package:flutter/material.dart';
import './screens/splashscreen.dart';
import './screens/forms.dart';
import './screens/maps.dart';

var routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => SplashScreen(),
  "/home": (BuildContext context) => Home(),
  "/form": (BuildContext context) => FormScreen(),
  "/simpleform": (BuildContext context) => FormScreen1(),
  "/map": (BuildContext context) => Loading(),
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
