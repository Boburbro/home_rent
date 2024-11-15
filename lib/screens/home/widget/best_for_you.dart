import 'package:flutter/material.dart';
import 'package:home_rent/gen/assets.gen.dart';
import 'package:home_rent/theme/app_colors.dart';

class BestForYou extends StatelessWidget {
  const BestForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BestForYouItem(
          image: Assets.images.a5.keyName,
          title: "Orchad House",
          subtitle: "Rp. 2.500.000.000 / Year",
        ),
        BestForYouItem(
          image: Assets.images.a4.keyName,
          title: "The Hollies House",
          subtitle: "Rp. 2.000.000.000 / Year",
        ),
        BestForYouItem(
          image: Assets.images.a2.keyName,
          title: "Sea Breezes House",
          subtitle: "Rp. 2.500.000.000 / Year",
        ),
      ],
    );
  }
}

class BestForYouItem extends StatelessWidget {
  const BestForYouItem({
    required this.image,
    required this.title,
    required this.subtitle,
    super.key,
  });

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(4),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(image),
      ),
      title: Text(title),
      subtitle: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subtitle,
            style: const TextStyle(color: AppColors.c0A8ED9),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    height: 24,
                    color: Colors.grey,
                    Assets.icons.bed.keyName,
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    "6 Bedroom",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    height: 24,
                    color: Colors.grey,
                    Assets.icons.bath.keyName,
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    "4 Bathroom",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
