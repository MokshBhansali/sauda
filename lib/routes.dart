import 'package:flutter/material.dart';
import 'screens/tab/mainScreen.dart';
import 'screens/splashScreen.dart';

var routes = <String, WidgetBuilder>{
  "/": (context) => SplashScreen(),
  "/Main": (context) => MainScreen(),
};
