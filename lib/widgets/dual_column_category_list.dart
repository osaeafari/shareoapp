import 'package:flutter/material.dart';

class DualColumnCategoryList extends StatelessWidget {
  final List<CategoryItem> categories = [
    CategoryItem(
      image: 'assets/images/img1.jpg',
      title: 'Actualités',
      subtitle:
          'Best practices for remote work, tools, and maintaining productivity.',
    ),
    CategoryItem(
      image: 'assets/images/img2.jpg',
      title: 'Communauté',
      subtitle: 'Latest in movies, music, and celebrity news.',
    ),
    CategoryItem(
      image: 'assets/images/img3.jpg',
      title: 'Divertissement',
      subtitle: 'Viral content, platform updates, and influencer marketing.',
    ),
    CategoryItem(
      image: 'assets/images/img4.jpg',
      title: 'Outils',
      subtitle: 'Better workflows, automation, and analytics.',
    ),
    CategoryItem(
      image: 'assets/images/img5.jpg',
      title: 'Marketing',
      subtitle: 'Latest strategies, campaign results, and news.',
    ),
    CategoryItem(
      image: 'assets/images/img6.jpg',
      title: 'Productivité',
      subtitle: 'Work smarter, not harder.',
    ),
  ];

  DualColumnCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    final leftColumn = categories.sublist(0, 3);
    final rightColumn = categories.sublist(3);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: _buildColumn(leftColumn, startIndex: 1)),
          const SizedBox(width: 16),
          Expanded(child: _buildColumn(rightColumn, startIndex: 4)),
        ],
      ),
    );
  }

  Widget _buildColumn(List<CategoryItem> items, {required int startIndex}) {
    return Column(
      children: List.generate(items.length, (index) {
        final item = items[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  item.image,
                  width: 64,
                  height: 64,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${startIndex + index}. ${item.title}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item.subtitle,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

class CategoryItem {
  final String image;
  final String title;
  final String subtitle;

  CategoryItem({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}
