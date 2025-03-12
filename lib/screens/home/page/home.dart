import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mega shop',
          style: TextStyle(
            fontFamily: "DMSans",
            fontWeight: FontWeight.w700,
            color: FColors.oceanBlue,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
