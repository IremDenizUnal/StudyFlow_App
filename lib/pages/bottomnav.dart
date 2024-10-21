import 'package:flutter/material.dart';
import 'package:study_flow/pages/detail_page.dart';
import 'package:study_flow/pages/homePage/home_page.dart';
import 'package:study_flow/pages/profile_page.dart';
import 'package:study_flow/pages/upload_page.dart';

class BottomPage extends StatefulWidget {
  BottomPage({super.key});

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  int _currentIndex = 0;

  List _pages = [
    HomePage(),
    UploadPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.black,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index; // Update the index on tap
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  size: 30,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.picture_as_pdf_outlined,
                  size: 30,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outlined,
                  size: 30,
                ),
                label: ''),
          ]),
    );
  }
}
