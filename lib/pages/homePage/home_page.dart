import 'package:flutter/material.dart';
import 'package:study_flow/pages/homePage/posts.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Hangi belgeyi arıyorsunuz?',
                prefixIcon: Icon(Icons.search),
              ),
            ),
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
            SizedBox(height: 8),
            TopFavoritedCard('Türk Medeni Hukuku', 'Hukuk', '100+'),
            TopFavoritedCard('Türk Medeni Hukuku', 'Hukuk', '75+'),
            TopFavoritedCard('Türk Medeni Hukuku', 'Hukuk', '50+'),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 0,
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   onTap: (index) {},
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home,
      //         color: Colors.orange,
      //         size: 30,
      //       ),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.add_box_outlined,
      //         color: Colors.black,
      //         size: 30,
      //       ),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.person_outline,
      //         color: Colors.black,
      //         size: 30,
      //       ),
      //       label: '',
      //     ),
      //   ],
      // ),
    );
  }
}

class Filter extends StatelessWidget {
  final String label;
  Filter(this.label);

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(label),
      onSelected: (bool value) {},
    );
  }
}

class TopFavoritedCard extends StatelessWidget {
  final String title;
  final String category;
  final String count;

  TopFavoritedCard(this.title, this.category, this.count);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title),
        subtitle: Text(category),
        trailing: Text(count),
      ),
    );
  }
}
