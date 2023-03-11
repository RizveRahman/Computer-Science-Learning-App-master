import 'package:flutter/material.dart';

class AppTitle extends StatefulWidget {


  const AppTitle({super.key });

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Image.asset(
            'lib/images/google.png',
          ),
          const Text("Hello")
        ],
      ),
    );
  }
}
