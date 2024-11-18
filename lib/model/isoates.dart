import 'dart:convert';
import 'dart:isolate';

import 'package:grocery_app/model/notfication_model.dart';
import 'package:http/http.dart' as http;

Future<List<NotificationModel>> fetchNotificationsInIsolate() async {
  final receivePort = ReceivePort();
  await Isolate.spawn(_fetchData, receivePort.sendPort);

  return await receivePort.first as List<NotificationModel>;
}

Future<void> _fetchData(SendPort sendPort) async {
  final response = await http.get(
    Uri.parse(
        'https://raw.githubusercontent.com/shabeersha/test-api/main/test-notifications.json'),
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body) as Map<String, dynamic>;
    final List<NotificationModel> loadedNotifications = (data['data'] as List)
        .map((item) => NotificationModel.fromJson(item))
        .toList();
    sendPort.send(loadedNotifications);
  } else {
    sendPort.send([]);
  }
}
