import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/model/category_model.dart';

import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/app_decoration.dart';
import 'package:grocery_app/utils/app_text_style.dart';
import 'package:grocery_app/utils/image_path.dart';

import 'package:grocery_app/utils/media_query.dart';
import 'package:grocery_app/view/home_screen.dart/widgets/category_grid.dart';

import 'widgets/buil_offer.dart';
import 'widgets/build_location.dart';
import 'widgets/build_search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sh = MediaQueryUtils.getHeightInPercentage(context, 10);
    final sw = MediaQueryUtils.getHeightInPercentage(context, 10);
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.only(left: sw * .20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: sh * .5,
            ),
            buildLocation(sw),
            SizedBox(
              height: sh * .30,
            ),
            Padding(
              padding: EdgeInsets.only(right: sw * .2),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildSearch(sw),
                    SizedBox(
                        height: sw * .35,
                        width: sw * .35,
                        child: SvgPicture.asset(ImagePath.bellIcon)),
                    SizedBox(
                      height: sw * .35,
                      width: sw * .35,
                      child: SvgPicture.asset(ImagePath.tagIcon),
                    )
                  ]),
            ),
            SizedBox(
              height: sh * .30,
            ),
            const Text("what would you like to do today?",
                style: AppTextStyle.heading),
            categoryGrid(sw),
          ],
        ),
      ),
    );
  }
}
