 import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/model/category_model.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/app_decoration.dart';

import 'buil_offer.dart';

Expanded categoryGrid(double sw) {
    return Expanded(
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(sw * .05),
                          color: AppColors.backgroundColor,
                          boxShadow: const [AppDecoration.boxShadow]),
                      width: sw,
                      height: sw,
                      child: Stack(alignment: Alignment.topRight, children: [
                        if (index == 1 || index == 7) ...builOffer(sw),
                        Center(
                            child: SvgPicture.asset(
                                CategoryModel.categoryList[index])),
                        if (index == 0 || index == 2) ...builOffer(sw),
                      ]),
                    )),
          );
  }
