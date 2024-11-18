import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/model/category_model.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/app_decoration.dart';

import 'buil_offer.dart';

categoryGrid(double sw) {
  return SizedBox(
    height: sw * 3.2,
    width: sw * 7,
    child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 8,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.7,
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) => Column(children: [
              Expanded(
                child: Container(
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
                ),
              ),
              SizedBox(
                width: 80,
                height: 40,
                child: Center(
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                    CategoryModel.categoryText[index],
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ])),
  );
}
