import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/app_bar.dart';
import 'package:flutter_application_1/screens/home/page/home_screen.dart';
import 'package:flutter_application_1/screens/home/widget/bottom_nav_bar.dart';
import 'package:icons_plus/icons_plus.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    Container(
      color: Colors.redAccent,
      height: double.infinity,
    ),
    Container(
      color: Colors.blueAccent,
      height: double.infinity,
    ),
    Container(
      color: Colors.orangeAccent,
      height: double.infinity,
    ),
  ];

  void _onTapMethod(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(
        title: 'Mega shop',
        secondIcon: IonIcons.cart,
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: FBottomBar(
        currentIndex: _currentIndex,
        onTapMethod: _onTapMethod,
      ),
    );
  }
}
