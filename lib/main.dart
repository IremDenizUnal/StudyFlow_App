import 'package:flutter/material.dart';
import 'package:study_flow/pages/upload_page.dart';
import 'pages/detail_page.dart';
import 'pages/upload_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ana Sayfa',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ana Sayfa'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(),
                  ),
                );
              },
              child: Text('Detay Sayfasına Git'),
            ), ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UploadPage(),
                  ),
                );
              },
              child: Text('Dosya Yükleme Sayfasına Git'),
            ),
          ],
        ),
      ),
    );
  }
}
