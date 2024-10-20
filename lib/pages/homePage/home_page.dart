import 'package:flutter/material.dart';
import 'package:study_flow/pages/homePage/widgets/filter.dart';
import 'package:study_flow/pages/homePage/widgets/posts.dart';
import 'package:study_flow/pages/homePage/widgets/seachTextField.dart';
import 'package:study_flow/pages/homePage/widgets/topfavcard.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Text(
              "Hoşgeldin,\nAyşe Yılmaz 👋",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.favorite_border, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              searchTextField(),
              SizedBox(height: 16),
              Wrap(
                spacing: 4.0,
                runSpacing: 2.0,
                children: [
                  Filter('Linear Algebra'),
                  Filter('Tarih'),
                  Filter('Differential Equations'),
                  Filter('Edebiyat'),
                  Filter('Medeni Hukuka Giriş'),
                  Filter('Calculus 1'),
                ],
              ),
              SizedBox(height: 16),
              Text(
                "Sana Özel Öneriler",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              CourseList(),
              SizedBox(height: 8),
              Text(
                "En Çok Beğenilen Kaynaklar",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: topFavoritedData.length,
                itemBuilder: (context, index) {
                  return TopFavoritedCard(
                    topFavoritedData[index]['title']!,
                    topFavoritedData[index]['category']!,
                    topFavoritedData[index]['count']!,
                  );
                },
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
