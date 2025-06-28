import 'package:flutter/material.dart';
import 'package:shareoapp/widgets/double_brand_card.dart';

class DoubleBrandItem {
  final String image;
  final String title;
  final String text;

  DoubleBrandItem({
    required this.image,
    required this.title,
    required this.text,
  });
}

class DoubleBrandList extends StatelessWidget {
  final List<DoubleBrandItem> items;
  final int cardsPerColumn;

  const DoubleBrandList({
    super.key,
    required this.items,
    this.cardsPerColumn = 3,
  });

  @override
  Widget build(BuildContext context) {
    // Dynamically split itmes into columns
    List<List<DoubleBrandItem>> columns = [];
    for (int i = 0; i < items.length; i += cardsPerColumn) {
      columns.add(
        items.sublist(
          i,
          (i + cardsPerColumn > items.length)
              ? items.length
              : i + cardsPerColumn,
        ),
      );
    }

    // Set viewportFraction < 1.0 to show a peek of the next column
    final pageController = PageController(viewportFraction: 0.85);

    return SizedBox(
      height: cardsPerColumn * 110.0,
      width: double.infinity,
      child: PageView.builder(
        controller: pageController,
        itemCount: columns.length,
        itemBuilder: (context, pageIndex) {
          final columnItems = columns[pageIndex];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(columnItems.length, (index) {
                  final item = columnItems[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: DoubleBrandCard(item: item),
                  );
                }),
              ),
            ),
          );
        },
      ),
    );
  }
}
