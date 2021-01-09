import 'package:flutter/material.dart';
import 'routes.dart';
import 'global/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sauda',
      theme: ThemeData(
        primarySwatch: ColorPlate.BlueColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: routes,
      initialRoute: "/",
    );
  }
}
