 import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/image_path.dart';
import 'package:grocery_app/view/home_screen.dart/widgets/build_main_title.dart';

AppBar notifcationAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.backgroundColor,
      leading: Padding(
          padding: const EdgeInsets.all(15),
          child: InkWell(
              onTap: () => Navigator.pop(context),
              child: SvgPicture.asset(ImagePath.backArrow))),
      title: mainTitle("Notifications"),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(1.0), // Height of the bottom border
        child: Container(
          color: Colors.grey, // Border color
          height: 1.0, // Thickness of the border
        ),
      ),
    );
  }