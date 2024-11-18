
import 'package:flutter/material.dart';
import 'package:grocery_app/view/home_screen.dart/widgets/build_trending.dart';

class TrendingItem extends StatelessWidget {
  const TrendingItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      // color: Colors.yellow,
      width: 300,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: TrendingCard(),
          ),
          Expanded(
            flex: 1,
            child: TrendingCard(),
          ),
        ],
      ),
    );
  }
}