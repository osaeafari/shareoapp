import 'package:flutter/material.dart';

import '../core/constants/app_colors.dart';

class BrandImage extends StatelessWidget {
  const BrandImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage('assets/images/sp1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
