import 'package:flutter/material.dart';
import 'package:grocery_app/utils/app_colors.dart';

Center builLoading() {
    return Center(
              child: CircularProgressIndicator(
            color: AppColors.primaryColor,
          ));
  }