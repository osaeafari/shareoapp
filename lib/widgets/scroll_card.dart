import 'package:flutter/material.dart';
import 'package:shareoapp/core/constants/app_text_styles.dart';

import '../core/constants/app_colors.dart';

class ScrollData {
  final String image;
  final String title;
  final String text;

  ScrollData({required this.image, required this.title, required this.text});
}

class ScrollCard extends StatelessWidget {
  final ScrollData item;

  const ScrollCard({super.key, required this.item});

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
          icon: const Icon(Icons.cloud_download, color: AppColors.accent),
          onPressed: () {},
        ),
      ],
    );
  }
}
