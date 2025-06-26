import 'package:flutter/material.dart';
import 'category_icon_guesture.dart';

class CategoryIcons extends StatelessWidget {
  const CategoryIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110, // Give enough height for the icons + labels
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            CategoryIcon(
              label: 'Mobile & Tech Services',
              icon: Icons.devices_other,
            ),
            const SizedBox(width: 16),
            CategoryIcon(label: 'Food & Beverage', icon: Icons.fastfood),
            const SizedBox(width: 16),
            CategoryIcon(label: 'Events & Gifting', icon: Icons.redeem),
            const SizedBox(width: 24),
            CategoryIcon(label: 'Products & E-commerce', icon: Icons.store),
            const SizedBox(width: 16),
            CategoryIcon(
              label: 'Professional Services',
              icon: Icons.business_center,
            ),
            const SizedBox(width: 16),
            CategoryIcon(label: 'Creative & Media', icon: Icons.connected_tv),
            const SizedBox(width: 24),
            CategoryIcon(label: 'Health, Beauty & Wellness', icon: Icons.spa),
            const SizedBox(width: 16),
            CategoryIcon(label: 'Transport & Auto', icon: Icons.commute),
            const SizedBox(width: 16),
            CategoryIcon(
              label: 'Education & Training',
              icon: Icons.cast_for_education,
            ),
            const SizedBox(width: 16),
            CategoryIcon(
              label: 'Real Estate & Home Services',
              icon: Icons.real_estate_agent,
            ),
          ],
        ),
      ),
    );
  }
}
