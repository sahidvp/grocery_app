import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/app_text_style.dart';
import 'package:grocery_app/utils/image_path.dart';

Container buildSearch(double sw) {
  return Container(
    width: sw * 3.5,
    decoration: BoxDecoration(
        color: AppColors.fieldColor,
        borderRadius: BorderRadius.all(Radius.circular(sw * .05))),
    child: TextField(
      decoration: InputDecoration(
          suffixIcon: Padding(
            padding: EdgeInsets.all(12),
            child: SvgPicture.asset(
              ImagePath.searchIcon,
            ),
          ),
          border: InputBorder.none,
          hintText: "Search for products/stores",
          hintStyle: AppTextStyle.hintText,
          contentPadding: EdgeInsets.only(left: sw * .1, top: sw * .15)),
    ),
  );
}
