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
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return CourseCard(course: courses[index]);
        },
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final Course course;

  CourseCard({required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailPage()),
          );
        },
        child: Card(
          color: Colors.white,
          elevation: 4,
          shadowColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  course.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      child: Text(
                        course.category,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '${course.favnumber}+',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                          ),
                        ),
                        Icon(
                          Icons.favorite_border,
                          size: 18,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Text(
                  course.grade,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  course.description,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[700],
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
