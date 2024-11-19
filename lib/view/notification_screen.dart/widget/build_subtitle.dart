import 'package:flutter/material.dart';
import 'package:grocery_app/model/notfication_model.dart';
import 'package:grocery_app/view/notification_screen.dart/widget/formated_time.dart';

Column buildSubTitle(NotificationModel notification, double sw) {
    return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notification.body,
                      style: const TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: sw * .15,
                    ),
                    Text(
                      getFormattedTimestamp(notification.timestamp),
                      style: TextStyle(fontSize: 12),
                    ),
                  ]);
  }