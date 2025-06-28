import 'package:flutter/material.dart';
import 'package:shareoapp/widgets/brand_card.dart';

class BrandItem {
  final String image;
  final String title;
  final String text;

  BrandItem({required this.image, required this.title, required this.text});
}

class BrandCardList extends StatelessWidget {
  final List<BrandItem> items;
  const BrandCardList({super.key, required this.items});

  @override
  Widget build(BuildContext content) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      separatorBuilder: (context, index) => const Divider(height: 32),
      itemBuilder: (context, index) {
        final item = items[index];
        return BrandCard(item: item);
      },
    );
  }
}
