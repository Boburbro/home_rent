import 'package:flutter/material.dart';
import 'package:home_rent/theme/app_colors.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search_rounded,
                color: AppColors.c838383,
              ),
              hintText: "Search address, or near you",
              hintStyle: const TextStyle(color: AppColors.c858585),
              filled: true,
              fillColor: AppColors.cF7F7F7,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.tune_rounded),
        )
      ],
    );
  }
}
