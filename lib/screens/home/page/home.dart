import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/app_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(title: 'Mega shop'),
    );
  }
}
