import 'package:flutter/material.dart';

import '../../data/mock_data.dart';
import '../../widgets/brand_card_list.dart';
import '../../widgets/brand_chips.dart';
import '../../widgets/category_icons.dart';
import '../../widgets/double_brand_list.dart';
import '../../widgets/popular_brands_cards.dart';
import '../../widgets/scroll_container.dart';
import '../../widgets/section_title.dart';
import '../../widgets/slider_dots.dart';
import '../../widgets/special_for_you_slider.dart';
import '../../widgets/special_for_you_text.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  int _currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///** Special For You Section **///
          SpecialForYouText(),
          SpecialForYouSlider(
            onPageChanged: (index) {
              setState(() {
                _currentSlide = index;
              });
            },
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) =>
                  SliderDots(currentSlide: _currentSlide, dotIndex: index),
            ),
          ),

          ///** Categories Section **///
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [SectionTitle(sectionTitle: 'Categories')],
            ),
          ),
          CategoryIcons(),

          ///** Popular Services Section **///
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [SectionTitle(sectionTitle: 'Popular Brands')],
            ),
          ),
          PopularBrandsCards(),
          const SizedBox(height: 30),

          /// ** Brands Section **///
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [SectionTitle(sectionTitle: 'Brands')],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(children: [BrandCardList(items: brandItems)]),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [SectionTitle(sectionTitle: 'Double Brands')],
            ),
          ),
          DoubleBrandList(items: doubleBrandItems),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [SectionTitle(sectionTitle: 'Brands Chips')],
            ),
          ),
          ChipDataSet(chipData: chipsItems),
          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              height: 400,
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ScrollContainer(),
              ),
            ),
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
