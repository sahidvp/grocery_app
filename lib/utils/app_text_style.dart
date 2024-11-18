import 'package:flutter/material.dart';
import 'package:grocery_app/utils/app_colors.dart';

class AppTextStyle {
  static const TextStyle locationText =
      TextStyle(fontSize: 15, fontWeight: FontWeight.w700);
  static const TextStyle hintText =
      TextStyle(color: AppColors.hintTexColor, fontWeight: FontWeight.w500);
  static const TextStyle heading =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w700);
  static const TextStyle discountText = TextStyle(
      color: AppColors.backgroundColor,
      fontWeight: FontWeight.w700,
      fontSize: 30,
      fontFamily: "Poppins");
  static const TextStyle subHeading =
      TextStyle(fontSize: 13, fontWeight: FontWeight.w500);
}
