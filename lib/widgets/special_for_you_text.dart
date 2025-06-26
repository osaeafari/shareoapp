import 'package:flutter/material.dart';

import '../core/constants/app_colors.dart';

class SpecialForYouText extends StatelessWidget {
  const SpecialForYouText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            '#SpecialForYou',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text('See all', style: TextStyle(color: AppColors.primary)),
        ],
      ),
    );
  }
}
