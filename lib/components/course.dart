import 'package:flutter/material.dart';

class Course extends StatelessWidget {

  final String image;
  final String text;
  const Course({
    super.key,
    required this.image,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xff393E46)
      ),
      child: Column(children: [
        const SizedBox(height: 25,),
        Image.network(image, height: 40,),
        const SizedBox(height: 10,),
        Text(text),

      ],),
    );
  }
}
