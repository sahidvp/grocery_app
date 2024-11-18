import 'package:flutter/material.dart';
import 'package:grocery_app/utils/app_theme.dart';
import 'package:grocery_app/view/home_screen.dart/home_screen.dart';
import 'package:grocery_app/view/notification_screen.dart/notification_screen.dart';
import 'package:provider/provider.dart';

import 'controller/notification_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => NotificationProvider()..fetchNotifications(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Grocery App",
      theme: Apptheme.myTheme,
      home: const HomeScreen(),
      routes: {
        "/home": (context) => HomeScreen(),
        "/nofification": (context) => NotificationScreen(),
      },
    );
  }
}
