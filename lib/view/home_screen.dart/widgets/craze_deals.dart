import 'package:flutter/material.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/app_text_style.dart';
import 'package:grocery_app/utils/image_path.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class CrazeDeals extends StatelessWidget {
  const CrazeDeals({
    super.key,
    required this.sw,
  });

  final double sw;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sw * 5,
      height: sw * 2.2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(right: sw * .1),
                child: Container(
                  width: sw * 4.3,
                  height: sw * 2.2,
                  decoration: BoxDecoration(
                    color: AppColors.crazeDeals,
                    borderRadius: BorderRadius.circular(sw * .05),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        right: -10,
                        child: Image.asset(
                          ImagePath.vegetable,
                          fit: BoxFit.fill,
                          height: sw * 2.2,
                          // Adjust image width
                        ),
                      ),
                      Positioned(
                        top: sw * 0.35, // Adjust vertical positioning
                        left: sw * 0.3, // Adjust horizontal positioning
                        child: const Text(
                            "Customer favourite \ntop supermarkets", // Your text
                            style: AppTextStyle.dealsText),
                      ),
                      Positioned(
                          bottom: sw * .5,
                          left: sw * .3,
                          child: const Row(
                            children: [
                              Text(
                                "Explore",
                                style: TextStyle(
                                    color: AppColors.exploreColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              Icon(
                                IconsaxPlusLinear.arrow_right,
                                color: AppColors.exploreColor,
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              )),
    );
  }
}
