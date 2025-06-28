import 'package:flutter/material.dart';
import 'package:shareoapp/data/mock_data.dart';
import 'package:shareoapp/widgets/scroll_card.dart';

class ScrollContainer extends StatelessWidget {
  const ScrollContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(
          255,
          158,
          147,
          168,
          // ignore: deprecated_member_use
        ).withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: List.generate(scrollData.length * 2 - 1, (index) {
            if (index.isEven) {
              //card
              final dataIndex = index ~/ 2;
              return ScrollCard(item: scrollData[dataIndex]);
            } else {
              // space and divider between cards
              return Column(
                children: const [Divider(height: 35, thickness: 0.3)],
              );
            }
          }),
        ),
      ),
    );
  }
}
