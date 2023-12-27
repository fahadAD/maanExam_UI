import 'package:exam_ui/home.dart';
import 'package:exam_ui/tab1.dart';
import 'package:flutter/material.dart';
import 'bottom_navigationbar.dart';
import 'details_screen.dart';
 void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigation(),
      // home: Tab1(),
    );
  }
}

