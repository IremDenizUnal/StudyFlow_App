import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int userRating = 0;

  @override
  Widget build(BuildContext context) {
    //ekran boyutları
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0XFFF4F8FA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                imagePart(screenHeight, context),
                Container(
                  padding: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    color: Color(0XFF96B6C5).withOpacity(0.3),
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  // lesson-class-owner
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      lesson_fav_part(),
                      SizedBox(height: 8),
                      class_part(),
                      SizedBox(height: 8),
                      owner_date_part(),
                      SizedBox(height: 20),
                      Divider(
                        color: Colors.grey[700], // Çizginin rengi
                        thickness: 1, // Çizginin kalınlığı
                        indent: 30, // Soldan boşluk
                        endIndent: 30, // Sağdan boşluk
                      ),
                      explanation_part(),
                      download_button(),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
                rating_part()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container rating_part() {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Bu kaynağa puan verin ",
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 3),
          Text(
            "İşlevselliğini bizimle paylaşın",
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 12,
            ),
          ),

          SizedBox(height: 20),

          // Kullanıcının puanı
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(5, (index) {
              return Row(
                children: [
                  IconButton(
                    icon: Icon(
                      index < userRating ? Icons.star : Icons.star_outline,
                      color: Color(0XFFFF9874),
                    ),
                    onPressed: () {
                      setState(() {
                        userRating = index + 1; // Kullanıcı puanı
                      });
                    },
                  ),
                  if (index < 4)
                    SizedBox(
                      width: 6,
                    ),
                ],
              );
            }),
          ),
          // Kullanıcının puanı

          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "4.2",
                style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              Spacer(),
              Column(
                children: [
                  buildRatingBar(5, 0.7),
                  buildRatingBar(4, 0.5),
                  buildRatingBar(3, 0.3),
                  buildRatingBar(2, 0.1),
                  buildRatingBar(1, 0.05),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Container download_button() {
    return Container(
      alignment: Alignment.centerRight,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(
          Icons.download,
          color: Colors.white,
        ),
        label: Text(
          "İndir",
          style: TextStyle(color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          elevation: 2,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Color(0XFFFF9874),
          shadowColor: Colors.grey[700],
        ),
      ),
    );
  }

  Row explanation_part() {
    return Row(
      children: [
        Icon(
          Icons.picture_as_pdf,
          size: 90.0, // İkon boyutu
          color: Colors.grey[700], // İkon rengi
        ),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Açıklama:',
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              //text kısmında overflow hatası!!!
              Text(
                'Ünal hocanın dersinde \nslaytlardan çıkardığım \nözet notlar',
              ),

              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ],
    );
  }

  Row owner_date_part() {
    return Row(
      children: [
        Text('Yükleyen: ',
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        Text('Ali Yılmaz', style: TextStyle(fontSize: 18)),
        Spacer(),
        Icon(
          Icons.date_range,
          color: Colors.grey[800],
        ),
        Text('06.10.24',
            style: TextStyle(color: Colors.grey[800], fontSize: 16)),
      ],
    );
  }

  Row class_part() {
    return Row(
      children: [
        Text('Sınıf: ',
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        Chip(
          label: Text(
            '2. Sınıf',
            style: TextStyle(color: Colors.grey[800]),
          ),
          backgroundColor: Colors.white10,
          elevation: 2,
          shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15), //
          ),
        ),
      ],
    );
  }

  Row lesson_fav_part() {
    return Row(
      children: [
        Text('Ders:',
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        Text(' Hukuk ve Ahlak',
            style: TextStyle(
                color: Colors.grey[900],
                fontSize: 22,
                fontWeight: FontWeight.bold)),
        Spacer(),
        Icon(
          Icons.file_open,
          color: Colors.grey[800],
        ),
        SizedBox(
          width: 3,
        ),
        Text('46', style: TextStyle(color: Colors.grey[800], fontSize: 16)),
      ],
    );
  }

  Container imagePart(double screenHeight, BuildContext context) {
    return Container(
      height: screenHeight * 0.20,
      child: Stack(
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              'lib/assets/images/law.jpg',
              fit: BoxFit.cover,
              width: double.infinity, // Genişlik tam sayfa
            ),
          ),
          Container(
            color: Color(0XFF96B6C5).withOpacity(0.3), // Mavi arka plan
            alignment: Alignment.center,
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  // Rating bar
  Widget buildRatingBar(int stars, double fillPercentage) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Text(stars.toString()),
        SizedBox(width: 8),
        Container(
          width: screenWidth * 0.5,
          child: LinearProgressIndicator(
              value: fillPercentage,
              backgroundColor: Colors.grey[400],
              color: Color(0XFFFF9874)),
        ),
      ],
    );
  }
}
