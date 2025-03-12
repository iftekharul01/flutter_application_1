import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:icons_plus/icons_plus.dart';

class FAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FAppBar({
    super.key,
    required this.title,
    this.firstIcon = Iconsax.notification_bing_outline,
    required this.secondIcon,
    this.backButton = false,
  });
  final String title;
  final IconData firstIcon;
  final IconData secondIcon;
  final bool backButton;
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: backButton ? Icon(Iconsax.arrow_left_2_outline) : null,
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
          child: Icon(firstIcon),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(5, 10, 10, 10),
          child: Icon(secondIcon),
        ),
      ],
    );
  }
}
