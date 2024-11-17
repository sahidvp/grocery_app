import 'package:flutter/widgets.dart';

class MediaQueryUtils {
  
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

 
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  // Method to get screen width as a percentage
  static double getWidthInPercentage(BuildContext context, double percentage) {
    double screenWidth = MediaQuery.of(context).size.width;
    return (screenWidth * percentage) / 100;
  }

  // Method to get screen height as a percentage
  static double getHeightInPercentage(BuildContext context, double percentage) {
    double screenHeight = MediaQuery.of(context).size.height;
    return (screenHeight * percentage) / 100;
  }
}
