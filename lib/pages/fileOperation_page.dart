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
      home: AccountEditPage(),
    );
  }
}

class AccountEditPage extends StatefulWidget {
  @override
  State<AccountEditPage> createState() => _AccountEditPageState();
}

class _AccountEditPageState extends State<AccountEditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
          backgroundColor: Colors.white,
        title: Text(
          'Dosyayı Düzenle',
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
              SizedBox(height: 50), 
            
              
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
        labelText: 'Dosya Adı',
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
            maxLines: 1, 
          ),
        ),
        SizedBox(height: 30),
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
            maxLines: 1, 
          ),
        ),
        SizedBox(height: 30),
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
        labelText: 'Tag#',
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
            maxLines: 1, 
          ),
        ),
        SizedBox(height: 30),
            
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
        labelText: 'Dosya Türü',
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
            items: ['Dosya 1', 'Dosya 2', 'Dosya 3']
          .map((label) => DropdownMenuItem(
                child: Text(label),
                value: label,
              ))
          .toList(),
            onChanged: (value) {},
          ),
        ),
        
         SizedBox(height: 40),
        
             
              SizedBox(
                
                width: 150, 
                child: ElevatedButton.icon(
                  onPressed: () {
                   
                  },
                  icon: Icon(Icons.edit),
                  label: Text(
                    'Düzenle',
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
       
    );
  }
}
