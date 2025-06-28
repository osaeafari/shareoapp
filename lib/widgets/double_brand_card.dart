import 'package:flutter/material.dart';
import 'package:shareoapp/core/constants/app_text_styles.dart';
import 'package:shareoapp/widgets/double_brand_list.dart';

import '../core/constants/app_colors.dart';

class DoubleBrandCard extends StatelessWidget {
  final DoubleBrandItem item;

  const DoubleBrandCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Image
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            item.image,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 12),
        //Title and text
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(item.title, style: AppTextStyles.brandtitle),
              const SizedBox(height: 4),
              Text(
                item.text,
                style: AppTextStyles.brandtext,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        IconButton(
          icon: const Icon(Icons.arrow_forward, color: AppColors.accent),
          onPressed: () {},
        ),
      ],
    );
  }
}
