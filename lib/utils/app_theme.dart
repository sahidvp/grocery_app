import 'package:flutter/material.dart';

class Apptheme {
  static final ThemeData myTheme = ThemeData(
    fontFamily: "Quicksand",

    scaffoldBackgroundColor: Colors.white,
    primarySwatch: Colors.lightGreen,
    // Other theme properties
    iconTheme:
        const IconThemeData(color: Color(0x008bc83f)), // Set icon color here
  );
}
