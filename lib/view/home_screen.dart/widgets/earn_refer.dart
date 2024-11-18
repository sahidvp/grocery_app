import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/image_path.dart';
import 'package:grocery_app/utils/media_query.dart';

class EarnAndRefer extends StatelessWidget {
  const EarnAndRefer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final sw = MediaQueryUtils.getHeightInPercentage(context, 10);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.referEarn,
      ),
      height: 90,
      width: sw * 5.5,
      child: Stack(
        children: [
          const Positioned(
            left: 35,
            top: 18,
            child: SizedBox(
              width: 130,
              height: 25,
              child: Text(
                "Refer & Earn",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 15,
            bottom: 25,
            child: SizedBox(
              width: 250,
              height: 18,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      "Invite your friends & earn 15%",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.backgroundColor,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_circle_right,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 2,
            bottom: 10,
            child: SizedBox(
              width: 85,
              height: 82,
              child: SvgPicture.asset(ImagePath.giftOne),
            ),
          ),
        ],
      ),
    );
  }
}
