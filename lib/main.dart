import 'package:flutter/material.dart';
import 'package:study_flow/pages/bottomnav.dart';
import 'package:study_flow/pages/homePage/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomPage(),
    );
  }
}
