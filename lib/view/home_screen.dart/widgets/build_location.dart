import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/utils/app_text_style.dart';
import 'package:grocery_app/utils/image_path.dart';

Row buildLocation(double sw) {
  return Row(
    children: [
      SvgPicture.asset(
        ImagePath.gps,
      ),
      SizedBox(
        width: sw * .15,
      ),
      const Text(
        "ABCD , New Delhi",
        style: AppTextStyle.locationText,
      ),
      SizedBox(
        width: sw * .15,
      ),
      SvgPicture.asset(
        ImagePath.downArrow,
        width: sw * .15,
        height: sw * .12,
      )
    ],
  );
}
