import 'package:flutter/material.dart';
import 'package:flutter_basic_layout/src/screens/home_screen.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
      return MaterialApp(
         debugShowCheckedModeBanner: false,
         title: 'example app',
         home: HomeScreeen()
      );
  }
}