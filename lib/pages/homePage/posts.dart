import 'package:flutter/material.dart';
import 'package:study_flow/pages/detail_page.dart';

class Course {
  final String title;
  final String category;
  final String grade;
  final String description;
  final int favnumber;

  Course({
    required this.title,
    required this.category,
    required this.grade,
    required this.description,
    required this.favnumber,
  });
}

class CourseList extends StatelessWidget {
  final List<Course> courses = [
    Course(
      title: 'Türk Medeni Hukuku',
      category: 'Hukuk',
      grade: '2.Sınıf',
      description: 'Geçmiş Yılın Sınav Soruları',
      favnumber: 75,
    ),
    Course(
      title: 'Türk Medeni Hukuku',
      category: 'Hukuk',
      grade: '2.Sınıf',
      description: 'Geçmiş Yılın Sınav Soruları',
      favnumber: 75,
    ),
    // Diğer veriler...
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: courses.length,
          itemBuilder: (context, index) {
            return CourseCard(course: courses[index]);
          },
        ),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final Course course;

  CourseCard({required this.course});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: 250,
        height: 200,
        child: InkWell(
          onTap: () {
            // Sayfa değiştirme işlemi
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailPage()),
            );
          },
          child: Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(course.title),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${course.category} - ${course.grade}'),
                  Text(course.description),
                ],
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${course.favnumber}+'),
                  Icon(Icons.favorite_border),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
