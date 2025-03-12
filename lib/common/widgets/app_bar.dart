import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:icons_plus/icons_plus.dart';

class FAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FAppBar({
    super.key, 
    required this.title,
  });
  final String title;
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontFamily: "DMSans",
          fontWeight: FontWeight.w700,
          color: FColors.oceanBlue,
        ),
      ),
      centerTitle: true,
      actions: [
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
          child: Icon(Iconsax.notification_bing_outline),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(5, 10, 10, 10),
          child: Icon(IonIcons.cart),
        ),
      ],
    );
  }
}
