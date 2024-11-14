import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Location",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            Text(
              "Jakarta",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Badge(
            child: Icon(
              Icons.notifications_active_rounded,
            ),
          ),
        )
      ],
    );
  }
}
