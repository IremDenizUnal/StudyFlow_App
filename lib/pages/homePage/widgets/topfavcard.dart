import 'package:flutter/material.dart';
import 'package:study_flow/pages/detail_page.dart';

class TopFavoritedCard extends StatelessWidget {
  final String title;
  final String category;
  final String count;

  TopFavoritedCard(this.title, this.category, this.count);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: InkWell(
        onTap: () {
          // Sayfa değiştirme işlemi
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailPage()),
          );
        },
        child: Card(
          elevation: 4,
          color: Colors.grey[200],
          margin: EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  child: Text(
                    category,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  count,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final List<Map<String, String>> topFavoritedData = [
  {'title': 'Türk Medeni Hukuku', 'category': 'Hukuk', 'count': '100+'},
  {'title': 'Türk Ceza Hukuku', 'category': 'Hukuk', 'count': '75+'},
  {'title': 'İdare Hukuku', 'category': 'Hukuk', 'count': '50+'},
];
