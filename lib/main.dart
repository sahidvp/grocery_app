import 'package:flutter/material.dart';
import 'package:grocery_app/utils/app_theme.dart';
import 'package:grocery_app/view/home_screen.dart/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: "Grocery App",
      theme: Apptheme.myTheme,
      home: HomeScreen(),
    
    );
  }
}
