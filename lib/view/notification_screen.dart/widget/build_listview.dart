import 'package:flutter/material.dart';
import 'package:grocery_app/controller/notification_provider.dart';
import 'package:grocery_app/view/notification_screen.dart/widget/build_subtitle.dart';

import '../../../utils/app_text_style.dart';

ListView bulilListview(NotificationProvider provider, double sw) {
    return ListView.separated(
          itemCount: provider.notifications.length,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            final notification = provider.notifications[index];

            return ListTile(
              //  leading: Image.asset('assets/images/${notification.image}'),
              title: Text(notification.title, style: AppTextStyle.listTitle),
              subtitle: buildSubTitle(notification, sw),
            );
          },
        );
  }