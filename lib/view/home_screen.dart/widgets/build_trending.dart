import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/utils/app_text_style.dart';
import 'package:grocery_app/utils/image_path.dart';

class TrendingCard extends StatelessWidget {
  const TrendingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100,
          // color: Colors.orange,
          child: Image.asset(ImagePath.iceCream),
        ),
        Flexible(
          child: ListTile(
            title: const Text(
              "Mithas Bhandar",
              style: AppTextStyle.heading,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Sweets,North Indian",
                  style: AppTextStyle.subHeading,
                ),
                const Text(
                  "(store location) | 6.4 kms",
                  style: AppTextStyle.subHeading,
                ),
                Row(
                  children: [
                    SvgPicture.asset(ImagePath.star),
                    const Text(
                      " 4.1 | 45 mins",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
