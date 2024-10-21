import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50], // Arka plan rengi
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 40.0, right: 10.0, left: 10.0, bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: CircleAvatar(
                      radius: 40,
                      child: Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ali Yılmaz',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'aliyilmaz06@gmail.com',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Icon(Icons.settings, color: Colors.grey),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.school, color: Colors.orange),
                        SizedBox(width: 5),
                        Text('Ankara Yıldırım Beyazıt Üniversitesi'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.book, color: Colors.orange),
                        SizedBox(width: 5),
                        Text('Yazılım Mühendisliği - 2. Sınıf'),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: ProfileStat(title: '20', subtitle: 'Paylaşım')),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: ProfileStat(title: '50', subtitle: 'İndirme')),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: ProfileStat(
                      title: '20',
                      subtitle: 'Favori',
                    )),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ToggleButtons(
                    isSelected: [true, false],
                    onPressed: (int index) {
                      // Seçim işlevi
                    },
                    borderRadius: BorderRadius.circular(8),
                    selectedColor: Colors.white,
                    fillColor: Color(0XFF96B6C5).withOpacity(0.8),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 41),
                        child: Text('Paylaştıklarım'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 41),
                        child: Text('Favorilerim'),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 3), // Sağ ve sol tarafta padding ekledik
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 5), // Dikey ve yatay boşluk
                        decoration: BoxDecoration(
                          color: Colors.white, // Beyaz arka plan
                          borderRadius:
                              BorderRadius.circular(10), // Kenarları yuvarlak
                          boxShadow: [
                            BoxShadow(
                              color: Color(0XFFADC4CE), // Gölge rengi
                              spreadRadius: 0, // Gölgenin yayılma alanı
                              blurRadius: 4, // Gölgenin bulanıklığı
                              offset: Offset(0, 3), // Gölgenin konumu
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ListTile(
                            title: Text('Türk Medeni Hukuku',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                            subtitle: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    color: Colors.black), // Genel metin rengi
                                children: [
                                  WidgetSpan(
                                    child: SizedBox(
                                        height: 20), // Araya boşluk ekliyoruz
                                  ),
                                  TextSpan(
                                    text: '2. Sınıf\n', // İlk satır
                                    style: TextStyle(
                                      fontWeight: FontWeight
                                          .w500, // İlk metni kalın yapıyoruz
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: SizedBox(
                                        height: 25), // Araya boşluk ekliyoruz
                                  ),
                                  TextSpan(
                                    text:
                                        'Geçmiş Yılın Sınav Soruları', // İkinci satır
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize:
                                          14, // İkinci metin rengi gri yapıyoruz
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            trailing: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('75+'),
                                Icon(Icons.favorite_border),
                              ],
                            ),
                            leading: Chip(
                              label: Text('Hukuk'),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Color(0XFFFF9874), // Çizginin rengi
                                  width: 1, // Çizginin kalınlığı
                                ),
                                borderRadius: BorderRadius.circular(
                                    8), // Chip'in kenarları yuvarlak
                              ),
                            ),
                          ),
                        ),
                      );
                    },
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

class ProfileStat extends StatelessWidget {
  final String title;
  final String subtitle;

  ProfileStat({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Beyaz arka plan
        borderRadius: BorderRadius.circular(20), // Kenarları yuvarlak
        boxShadow: [
          BoxShadow(
            color: Color(0XFFD9D9D9), // Gölge rengi
            spreadRadius: 1, // Gölgenin yayılma alanı
            blurRadius: 5, // Gölgenin bulanıklığı
            offset: Offset(0, 3), // Gölgenin konumu
          ),
        ],
      ),
      padding: EdgeInsets.all(16), // İçerik için boşluk
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0XFF757575)),
          ),
          Text(
            subtitle,
            style: TextStyle(color: Color(0XFF757575)),
          ),
        ],
      ),
    );
  }
}
