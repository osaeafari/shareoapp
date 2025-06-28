import 'package:flutter/material.dart';
import 'package:shareoapp/core/constants/app_text_styles.dart';
import 'package:shareoapp/widgets/brand_card_list.dart';

class BrandCard extends StatelessWidget {
  final BrandItem item;

  const BrandCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            item.image,
            width: 110,
            height: 110,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 12),
        // Title, text, and button
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
              const SizedBox(height: 6),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFEDE6F6),
                  foregroundColor: Colors.deepPurple,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text('Read more', style: AppTextStyles.caption),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward, size: 18),
                  ],
                ),
              ),
            ],
          ),
        ),
        // Share icon
        IconButton(
          icon: const Icon(Icons.share, color: Color(0xFFFFA726)),
          onPressed: () {},
        ),
      ],
    );
  }
}
