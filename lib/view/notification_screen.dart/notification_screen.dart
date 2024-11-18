import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/controller/notification_provider.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/image_path.dart';
import 'package:grocery_app/view/home_screen.dart/widgets/build_main_title.dart';
import 'package:provider/provider.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: Padding(
            padding: const EdgeInsets.all(15),
            child: InkWell(
                onTap: () => Navigator.pop(context),
                child: SvgPicture.asset(ImagePath.backArrow))),
        title: mainTitle("Notifications"),
      ),
     
    );
  }
}
