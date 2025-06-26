import "package:flutter/material.dart";

import "../core/constants/app_colors.dart";

class PopularBrandsCards extends StatelessWidget {
  const PopularBrandsCards({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> brandsImages = [
      'assets/images/sp3.jpg',
      'assets/images/sp4.jpg',
      'assets/images/sp5.jpg',
      'assets/images/sp6.jpg',
      'assets/images/sp7.jpg',
    ];

    return SizedBox(
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder:
            (context, index) => Container(
              width: 170,
              margin: EdgeInsets.only(left: index == 0 ? 24 : 8, right: 8),
              decoration: BoxDecoration(
                color: AppColors.textPrimary,
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(brandsImages[index]),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black54,
                    BlendMode.darken,
                  ),
                ),
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.star, color: Colors.orange, size: 14),
                      SizedBox(width: 4),
                      Text('4.8'),
                    ],
                  ),
                ),
              ),
            ),
      ),
    );
  }
}
