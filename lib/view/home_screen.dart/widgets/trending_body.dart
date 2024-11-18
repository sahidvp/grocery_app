 import 'package:flutter/material.dart';

import 'trending_item.dart';

SizedBox trendingBody(double sw) {
    return SizedBox(
              height: sw * 3,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  TrendingItem(),
                  TrendingItem(),
                ],
              ),
            );
  }