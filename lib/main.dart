import 'package:flutter/material.dart';
import 'package:restofood_sqlite/ui/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Restofood",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}