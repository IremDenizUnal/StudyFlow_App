import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UploadPage(),
    );
  }
}

class UploadPage extends StatefulWidget {
  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
          backgroundColor: Colors.white,
        title: Text(
          'Yeni Kaynak Yükle',
          style: TextStyle(fontWeight: FontWeight.bold), 
        ),
        centerTitle: true,
        elevation: 5, 
        shadowColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40), 
              // Dosya Yükle Kutusu
              Container(
                height: 150,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3), 
                      spreadRadius: 2, 
                      blurRadius: 2,
                      offset: Offset(2, 2), 
                    ),
                  ],
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.upload_file, size: 50, color: Colors.blue),
                      SizedBox(height: 10),
                      Text(
                        'Dosya Yükle',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
        
              // Bölüm Butonu
              Container(
          decoration: BoxDecoration(
            boxShadow: [
        BoxShadow(
          color: Colors.orange.withOpacity(0.3), 
          spreadRadius: 2, 
          blurRadius: 2, 
          offset: Offset(2, 2), 
        ),
            ],
            borderRadius: BorderRadius.circular(20), 
          ),
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
        labelText: 'Bölüm',
        labelStyle: TextStyle(color: Colors.grey[600]), 
        border: InputBorder.none, 
        filled: true,
        fillColor: Colors.white,
        
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20), 
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20), 
          borderSide: BorderSide(color: Colors.transparent), 
        ),
            ),
            items: ['Bölüm 1', 'Bölüm 2', 'Bölüm 3']
          .map((label) => DropdownMenuItem(
                child: Text(label),
                value: label,
              ))
          .toList(),
            onChanged: (value) {},
          ),
        ),
         SizedBox(height: 20),
        
              // Ders Butonu
              Container(
          decoration: BoxDecoration(
            boxShadow: [
        BoxShadow(
          color: Colors.orange.withOpacity(0.3),
          spreadRadius: 2, 
          blurRadius: 2, 
          offset: Offset(2, 2), 
        ),
            ],
            borderRadius: BorderRadius.circular(20), 
          ),
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
        labelText: 'Ders',
        labelStyle: TextStyle(color: Colors.grey[600]), 
        border: InputBorder.none, 
        filled: true,
        fillColor: Colors.white,
             
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20), 
          borderSide: BorderSide(color: Colors.transparent), 
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20), 
          borderSide: BorderSide(color: Colors.transparent), 
        ),
            ),
            items: ['Ders 1', 'Ders 2', 'Ders 3']
          .map((label) => DropdownMenuItem(
                child: Text(label),
                value: label,
              ))
          .toList(),
            onChanged: (value) {},
          ),
        ),
         SizedBox(height: 20),
              // Sınıf Butonu
              Container(
          decoration: BoxDecoration(
            boxShadow: [
        BoxShadow(
          color: Colors.orange.withOpacity(0.3), 
          spreadRadius: 2, 
          blurRadius: 2, 
          offset: Offset(2, 2), 
        ),
            ],
            borderRadius: BorderRadius.circular(20), 
          ),
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
        labelText: 'Sınıf',
        labelStyle: TextStyle(color: Colors.grey[600]),
        border: InputBorder.none,
        filled: true,
        fillColor: Colors.white, 
        
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.transparent), 
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20), 
          borderSide: BorderSide(color: Colors.transparent), 
        ),
            ),
            items: ['Sınıf 1', 'Sınıf 2', 'Sınıf 3']
          .map((label) => DropdownMenuItem(
                child: Text(label),
                value: label,
              ))
          .toList(),
            onChanged: (value) {},
          ),
        ),
        
         SizedBox(height: 20),
              // Açıklama Butonu
              Container(
          decoration: BoxDecoration(
            boxShadow: [
        BoxShadow(
          color: Colors.orange.withOpacity(0.3), 
          spreadRadius: 2, 
          blurRadius: 2, 
          offset: Offset(2, 2), 
        ),
            ],
            borderRadius: BorderRadius.circular(20), 
          ),
          child: TextFormField(
            decoration: InputDecoration(
        labelText: 'Açıklama',
        labelStyle: TextStyle(color: Colors.grey[600]), 
        filled: true,
        fillColor: Colors.white, 
        border: InputBorder.none, 
             
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20), 
          borderSide: BorderSide(color: Colors.transparent), 
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20), 
          borderSide: BorderSide(color: Colors.transparent),
        ),
            ),
            maxLines: 3, 
          ),
        ),
        SizedBox(height: 20),
        
        
              // Paylaş Butonu
              SizedBox(
                width: 150, 
                child: ElevatedButton.icon(
                  onPressed: () {
                   
                  },
                  icon: Icon(Icons.share),
                  label: Text(
                    'Paylaş',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold, 
                      fontSize: 20,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    iconColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    elevation: 5,
                    shadowColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), 
                      side: BorderSide(
                        color: Colors.white,
                        width: 2, 
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home Page',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.upload_file),
            label: 'Upload',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
