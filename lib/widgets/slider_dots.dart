import 'package:flutter/material.dart';

import '../core/constants/app_colors.dart';

class SliderDots extends StatelessWidget {
  final dynamic currentSlide;
  final dynamic dotIndex;

  const SliderDots({
    super.key,
    required this.currentSlide,
    required this.dotIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color:
            currentSlide == dotIndex
                ? AppColors.primary
                // ignore: deprecated_member_use
                : AppColors.textSecondary.withOpacity(0.5),
        shape: BoxShape.circle,
      ),
    );
  }
}
