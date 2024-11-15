import 'package:flutter/material.dart';

class BodyTile extends StatelessWidget {
  const BodyTile({
    required this.mainTitle,
    required this.subTitle,
    super.key,
  });

  final String mainTitle;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          mainTitle,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        Text(
          subTitle,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }
}
