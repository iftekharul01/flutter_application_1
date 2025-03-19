import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/app_bar.dart';
import 'package:icons_plus/icons_plus.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(
        title: 'Mega shop',
        secondIcon: IonIcons.cart,
      ),
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
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
