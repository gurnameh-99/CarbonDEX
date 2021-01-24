import 'package:flutter/material.dart';
import './screens/splashscreen.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.red, accentColor: Colors.yellowAccent),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
