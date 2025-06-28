import 'package:flutter/material.dart';

import '../core/constants/app_colors.dart';

class BrandTitleAndText extends StatelessWidget {
  const BrandTitleAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Brand Title',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: AppColors.textPrimary,
          ),
        ),
        Text(
          'Neque porro quisquam est qui dolorem, consectetur, adipisci velit...',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: AppColors.textPrimary,
          ),
        ),
      ],
    );
  }
}
