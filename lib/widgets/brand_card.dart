import 'package:flutter/material.dart';
import 'package:shareoapp/widgets/brand_buttons.dart';
import 'package:shareoapp/widgets/brand_image.dart';
import 'package:shareoapp/widgets/brand_title_and_text.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({super.key});

  @override
  Widget build(BuildContext content) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: BrandImage(),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [BrandTitleAndText(), BrandButtons()],
          ),
        ),
      ],
    );
  }
}
