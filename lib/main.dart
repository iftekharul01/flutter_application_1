import 'package:flutter/material.dart';

import 'screens/home/page/home.dart';

void main() {
  runApp(const FreebiesEcom());
}

//tinyurl.com/cse414-figma

class FreebiesEcom extends StatelessWidget {
  const FreebiesEcom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Freebies E-Com",
      home: Home(),
    );
  }
}
