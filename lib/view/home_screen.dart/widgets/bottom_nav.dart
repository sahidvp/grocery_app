import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/image_path.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 25,
      child: SizedBox(
        height: 60,
        child: BottomNavigationBar(
          backgroundColor: AppColors.backgroundColor,
          type: BottomNavigationBarType.fixed,
          // onTap: ,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                ImagePath.home,
                height: 25,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                ImagePath.cart,
                height: 25,
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                ImagePath.order,
                height: 25,
              ),
              label: "My order",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                ImagePath.profile,
                height: 25,
              ),
              label: "Account",
            ),
          ],
        ),
      ),
    );
  }
}
