import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/model/category_model.dart';

import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/app_decoration.dart';
import 'package:grocery_app/utils/app_text_style.dart';
import 'package:grocery_app/utils/image_path.dart';

import 'package:grocery_app/utils/media_query.dart';

import 'widgets/build_location.dart';
import 'widgets/build_search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List list = [0, 1, 2, 7];
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
            Expanded(
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
                        child: Center(
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                          Container(
                            color: AppColors.offerBox,
                            height: 10,
                            width: sw * .5,
                          ),
                          SvgPicture.asset(CategoryModel.categoryList[index]),
                        ])),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
