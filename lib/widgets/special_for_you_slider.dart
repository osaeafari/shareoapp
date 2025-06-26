import 'package:flutter/material.dart';

import '../core/constants/app_colors.dart';

class SpecialForYouSlider extends StatefulWidget {
  final void Function(int)? onPageChanged;
  const SpecialForYouSlider({super.key, this.onPageChanged});

  @override
  State<SpecialForYouSlider> createState() => _SpecialForYouSliderState();
}

class _SpecialForYouSliderState extends State<SpecialForYouSlider> {
  final PageController _pageController = PageController();

  // ignore: unused_field
  int _currentPage = 0;

  final List<String> offerImages = [
    'assets/images/sp1.jpg',
    'assets/images/sp2.jpg',
    'assets/images/sp3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: PageView.builder(
        controller: _pageController,
        itemCount: 3,
        onPageChanged: (index) {
          if (widget.onPageChanged != null) {
            widget.onPageChanged!(index);
          }
        },
        itemBuilder:
            (context, index) => Container(
              width: 170,
              margin: EdgeInsets.only(left: index == 0 ? 24 : 24, right: 24),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.textPrimary,
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(offerImages[index]),
                  fit: BoxFit.cover,
                  colorFilter: const ColorFilter.mode(
                    Colors.black54,
                    BlendMode.darken,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Limited time!',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Get Special Offer Up to 40%',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text('Claim'),
                    ),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
