import 'package:flutter/foundation.dart';
import 'package:grocery_app/controller/isoates.dart';
import 'package:grocery_app/model/notfication_model.dart';


class NotificationProvider with ChangeNotifier {
  List<NotificationModel> _notifications = [];

  List<NotificationModel> get notifications => _notifications;

  Future<void> fetchNotifications() async {
    try {
      final notifications = await fetchNotificationsInIsolate();

      _notifications = notifications;
      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }
}
