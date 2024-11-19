import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/controller/notification_provider.dart';
import 'package:grocery_app/utils/image_path.dart';
import 'package:grocery_app/view/notification_screen.dart/widget/build_subtitle.dart';

import '../../../utils/app_text_style.dart';

ListView bulilListview(NotificationProvider provider, double sw) {
  return ListView.separated(
    itemCount: provider.notifications.length,
    separatorBuilder: (context, index) => const Divider(),
    itemBuilder: (context, index) {
      final notification = provider.notifications[index];

      return ListTile(
        leading: SvgPicture.asset(ImagePath.orderAssigned),
        title: Text(notification.title, style: AppTextStyle.listTitle),
        subtitle: buildSubTitle(notification, sw),
      );
    },
  );
}
