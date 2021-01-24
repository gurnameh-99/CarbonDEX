import './screens/intro.dart';
import './screens/simpleform.dart';
import 'package:flutter/material.dart';
import './screens/splashscreen.dart';
import './screens/forms.dart';
import './screens/maps.dart';
import './screens/result.dart';

var routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => SplashScreen(),
  "/home": (BuildContext context) => Home(),
  "/form": (BuildContext context) => FormScreen(),
  "/simpleform": (BuildContext context) => FormScreen1(),
  "/map": (BuildContext context) => Loading(),
  "/result": (BuildContext context) => Result(),
};

void main() => runApp(
      MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.blue, accentColor: Colors.yellowAccent),
        debugShowCheckedModeBanner: false,
        //home: SplashScreen(),
        initialRoute: '/',
        routes: routes,
      ),
    );
