import 'package:flutter/material.dart';
import 'package:home_rent/screens/home/widget/custom_app_bar.dart';
import 'package:home_rent/screens/home/widget/custom_category.dart';
import 'package:home_rent/screens/home/widget/custom_search.dart';
import 'package:home_rent/theme/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.cFAFAFA,
      body: Padding(
        padding: EdgeInsets.only(
          top: 24,
          left: 16,
          right: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(),
              CustomSearch(),
              CustomCategory(),
            ],
          ),
        ),
      ),
    );
  }
}
