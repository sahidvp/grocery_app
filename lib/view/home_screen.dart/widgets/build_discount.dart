import 'package:flutter/material.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/image_path.dart';

import '../../../utils/app_text_style.dart';

Container buildDiscount(double sw, double sh) {
  return Container(
    decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(sw * .05)),
    width: sw * 4.3,
    height: sh * 3,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "DISCOUNT\n25% ALL\nFRUITS",
                style: AppTextStyle.discountText,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: sw * .6, vertical: sw * .1),
                decoration: BoxDecoration(
                    color: AppColors.checkNOw,
                    borderRadius: BorderRadius.circular(sw * .05)),
                child: Text(
                  "CHECK NOW",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: AppColors.backgroundColor,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ),
        Flexible(
          child: Image.asset(
            ImagePath.discountItem,
          ),
        )
      ],
    ),
  );
}

 SizedBox discountBuilder(double sh, double sw) {
    return SizedBox(
                height: sh * 3,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(right: sw * .1),
                        child: buildDiscount(sw, sh))));
  }