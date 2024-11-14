import 'package:flutter/material.dart';
import 'package:home_rent/screens/home/widget/category_item.dart';

class CustomCategory extends StatefulWidget {
  const CustomCategory({super.key});

  @override
  State<CustomCategory> createState() => _CustomCategoryState();
}

class _CustomCategoryState extends State<CustomCategory> {
  final List<String> items = [
    'House',
    'Apartment',
    'Hotel',
    'Villa',
    'Cottage'
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            items.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CategoryItem(
                name: items[index],
                isSelected: index == selectedIndex,
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
