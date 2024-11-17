import 'package:flutter/material.dart';
import 'package:grocery_app/utils/app_colors.dart';

List<Widget> builOffer(double sw) {
    return [
      Positioned(
        right: 0,
        top: 7,
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.offerBox,
              borderRadius: BorderRadius.circular(5)),
          height: 15,
          width: sw * .7,
          child: Center(
            child: Text(
              "10% off",
              style: TextStyle(fontSize: 10, color: Colors.white),
            ),
          ),
        ),
      ),
    ];
  }
