import 'package:flutter/material.dart';
import 'package:home_rent/gen/assets.gen.dart';

class NearFromYou extends StatelessWidget {
  const NearFromYou({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          NearFromYouItem(
            image: Assets.images.a2.keyName,
            name: "Dreamsville House",
            location: "Jl. Sultan Iskandar Muda",
            far: "1.8",
          ),
          NearFromYouItem(
            image: Assets.images.a1.keyName,
            name: "Ascot House",
            location: "Jl. Cilandak Tengah",
            far: "1.8",
          ),
        ],
      ),
    );
  }
}

class NearFromYouItem extends StatelessWidget {
  const NearFromYouItem({
    super.key,
    required this.image,
    required this.name,
    required this.location,
    required this.far,
  });

  final String image;
  final String name;
  final String location;
  final String far;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        height: 280,
        width: 280,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                height: 270,
                width: 270,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 270,
              width: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.5),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(0, 0, 0, 0.24),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.white,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '$far km',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 24,
              left: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    location,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
