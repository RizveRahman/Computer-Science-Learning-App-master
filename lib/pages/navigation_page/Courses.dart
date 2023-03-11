import 'package:computer_science_in_bangla/components/course.dart';
import 'package:flutter/material.dart';

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GridView.count(crossAxisCount: 3,
      children: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Course(image: ("https://picsum.photos/500/300"), text: 'Algorithms',),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Course(image: 'lib/images/google.png', text: 'Algorithms',),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Course(image: 'lib/images/google.png', text: 'Algorithms',),
        ),
      ],
    ),
    );
  }
}
