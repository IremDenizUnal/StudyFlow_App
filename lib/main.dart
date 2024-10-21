import 'package:flutter/material.dart';
import 'pages/detail_page.dart';
import 'pages/upload_page.dart';
import 'pages/fileOperation_page.dart';
import 'pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: HomePage(),
    );
  }
}

