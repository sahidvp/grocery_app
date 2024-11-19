import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/controller/notification_provider.dart';

import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/app_text_style.dart';
import 'package:grocery_app/utils/image_path.dart';
import 'package:grocery_app/utils/media_query.dart';
import 'package:grocery_app/view/home_screen.dart/widgets/build_main_title.dart';
import 'package:grocery_app/view/notification_screen.dart/widget/build_loading.dart';
import 'package:grocery_app/view/notification_screen.dart/widget/build_subtitle.dart';

import 'package:provider/provider.dart';

import 'widget/build_listview.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sw = MediaQueryUtils.getWidthInPercentage(context, 10);
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
      body: Consumer<NotificationProvider>(
        builder: (context, provider, _) {
          if (provider.notifications.isEmpty) {
            return builLoading();
          }
          return bulilListview(provider, sw);
        },
      ),
    );
  }
}
