import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/app_bar.dart';
import 'package:icons_plus/icons_plus.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    Container(
      color: Colors.green,
      height: double.infinity,
    ),
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
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onTapMethod,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Iconsax.home_outline),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.heart_outline),
              label: 'WISHLIST',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Iconsax.shopping_bag_outline,
              ),
              label: 'ORDER',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Iconsax.user_outline,
              ),
              label: 'ACCOUNT',
            ),
          ]),
    );
  }
}
