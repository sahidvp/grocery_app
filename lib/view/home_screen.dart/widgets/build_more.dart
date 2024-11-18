import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/image_path.dart';

Row builMore(double sw) {
  return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    Text(
      "More",
      style:
          TextStyle(color: AppColors.primaryColor, fontWeight: FontWeight.w700),
    ),
    SizedBox(
      width: sw * .07,
    ),
    SvgPicture.asset(
      ImagePath.downArrow,
      width: sw * .15,
    )
  ]);
}
