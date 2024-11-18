import 'package:flutter/foundation.dart';
import 'package:grocery_app/model/notfication_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class NotificationProvider with ChangeNotifier {
  List<NotificationModel> _notifications = [];

  List<NotificationModel> get notifications => _notifications;

  Future<void> fetchNotifications() async {
    try {
      final response = await http.get(
        Uri.parse('https://raw.githubusercontent.com/shabeersha/test-api/main/test-notifications.json'),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body) as Map<String, dynamic>;
        final List<NotificationModel> loadedNotifications = (data['data'] as List)
            .map((item) => NotificationModel.fromJson(item))
            .toList();

        _notifications = loadedNotifications;
        notifyListeners();
      } else {
        throw Exception('Failed to load notifications');
      }
    } catch (e) {
      rethrow;
    }
  }
}
