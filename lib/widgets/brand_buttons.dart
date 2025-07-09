import 'package:flutter/material.dart';

import '../core/constants/app_colors.dart';
import '../core/constants/app_text_styles.dart';

class BrandButtons extends StatelessWidget {
  const BrandButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(
              AppColors.primary.withOpacity(0.1),
            ),
          ),
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Read more', style: AppTextStyles.body),
              Icon(Icons.chevron_right, color: Colors.orange, size: 20),
            ],
          ),
        ),
        const Spacer(),
        Icon(Icons.ios_share, color: Colors.orange, size: 20),
      ],
    );
  }
}
