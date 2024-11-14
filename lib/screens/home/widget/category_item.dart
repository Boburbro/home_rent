import 'package:flutter/material.dart';
import 'package:home_rent/theme/app_colors.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    required this.name,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  final String name;
  final bool isSelected;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: isSelected ? AppColors.c0A8ED9 : AppColors.cF7F7F7,
      ),
      onPressed: onTap,
      child: Text(
        name,
        style: TextStyle(
          color: isSelected ? Colors.white : AppColors.c858585,
        ),
      ),
    );
  }
}
