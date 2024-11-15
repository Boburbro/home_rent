import 'package:flutter/material.dart';
import 'package:home_rent/screens/home/widget/best_for_you.dart';
import 'package:home_rent/screens/home/widget/body_tile.dart';
import 'package:home_rent/screens/home/widget/custom_app_bar.dart';
import 'package:home_rent/screens/home/widget/custom_category.dart';
import 'package:home_rent/screens/home/widget/custom_search.dart';
import 'package:home_rent/screens/home/widget/near_from_you.dart';
import 'package:home_rent/theme/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.cFAFAFA,
      body: Padding(
        padding: EdgeInsets.only(
          top: 30,
          left: 16,
          right: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(),
              CustomSearch(),
              CustomCategory(),
              SizedBox(height: 8),
              BodyTile(mainTitle: "Near from you", subTitle: "See more"),
              NearFromYou(),
              BodyTile(mainTitle: "Best for you", subTitle: "See more"),
              SizedBox(height: 8),
              BestForYou(),
            ],
          ),
        ),
      ),
    );
  }
}
