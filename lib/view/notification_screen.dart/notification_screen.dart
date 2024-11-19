import 'package:flutter/material.dart';

import 'package:grocery_app/controller/notification_provider.dart';

import 'package:grocery_app/utils/app_colors.dart';

import 'package:grocery_app/utils/media_query.dart';

import 'package:grocery_app/view/notification_screen.dart/widget/build_loading.dart';

import 'package:grocery_app/view/notification_screen.dart/widget/notifcation_app_bar.dart';

import 'package:provider/provider.dart';

import 'widget/build_listview.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sw = MediaQueryUtils.getWidthInPercentage(context, 10);
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: notifcationAppBar(context),
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
