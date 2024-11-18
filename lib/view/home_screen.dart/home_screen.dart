import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/app_text_style.dart';
import 'package:grocery_app/utils/image_path.dart';
import 'package:grocery_app/utils/media_query.dart';
import 'package:grocery_app/view/home_screen.dart/widgets/bottom_nav.dart';
import 'package:grocery_app/view/home_screen.dart/widgets/build_main_title.dart';
import 'package:grocery_app/view/home_screen.dart/widgets/build_more.dart';
import 'package:grocery_app/view/home_screen.dart/widgets/category_grid.dart';
import 'package:grocery_app/view/home_screen.dart/widgets/craze_deals.dart';
import 'package:grocery_app/view/home_screen.dart/widgets/earn_refer.dart';
import 'widgets/build_discount.dart';
import 'widgets/build_location.dart';
import 'widgets/build_search.dart';
import 'widgets/trending_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sh = MediaQueryUtils.getHeightInPercentage(context, 10);
    final sw = MediaQueryUtils.getHeightInPercentage(context, 10);
    return Scaffold(
      appBar: AppBar(
        title: buildLocation(sw),
        backgroundColor: AppColors.backgroundColor,
        surfaceTintColor: AppColors.backgroundColor,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.only(left: sw * .20, right: sw * .10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: sh * .15),
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
                          child: SvgPicture.asset(ImagePath.tagIcon))
                    ]),
              ),
              SizedBox(
                height: sh * .30,
              ),
              mainTitle("What would you like to do today?"),
              categoryGrid(sw),
              builMore(sw),
              SizedBox(height: sw * .20),
              mainTitle("Top picks for you"),
              SizedBox(height: sh * .15),
              discountBuilder(sh, sw),
              SizedBox(
                height: sw * .30,
              ),
              seeAll("Trending"),
              trendingBody(sw),
              SizedBox(height: sw * .20),
              mainTitle("Craze deals"),
              SizedBox(height: sw * .1),
              CrazeDeals(sw: sw),
              SizedBox(height: sw * .3),
              const EarnAndRefer(),
              SizedBox(height: sw * .3),
              seeAll("Nearby stores"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomNavbar(),
    );
  }

  Row seeAll(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        mainTitle(title),
        Text(
          "See all",
          style: AppTextStyle.seeAll,
        )
      ],
    );
  }
}
