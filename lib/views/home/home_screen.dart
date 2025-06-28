import 'package:flutter/material.dart';
import 'package:shareoapp/widgets/double_brand_list.dart';
import 'package:shareoapp/widgets/scroll_container.dart';
import '../../data/mock_data.dart';
import '../../widgets/brand_chips.dart';
import '../../widgets/category_icons.dart';
import '../../widgets/brand_card_list.dart';
import '../../widgets/section_title.dart';
import '../../widgets/appbar.dart';
import '../../widgets/popular_brands_cards.dart';
import '../../widgets/slider_dots.dart';
import '../../widgets/special_for_you_slider.dart';
import '../../widgets/special_for_you_text.dart';
import '../../widgets/bottom_navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // for bottom navigation
  int _currentIndex = 0;
  // for special offer slide
  int _currentSlide = 0;

  void _onSliderChanged(int index) {
    setState(() {
      _currentSlide = index;
    });
  }

  final int totalSlides = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavbar(
        currentIndex: _currentIndex, // manage this in your state
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          // Handle navigation if needed
        },
      ),

      //// App Bar section ////
      appBar: ShareoAppbar(),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///** Special For You Section **///
              // Special for you & See all text
              SpecialForYouText(),
              // Special offer Slider
              SpecialForYouSlider(onPageChanged: _onSliderChanged),
              // Space between offer card and sliderdots
              const SizedBox(height: 8),
              // Dots that controls the slider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  totalSlides, // total number of slides
                  (index) => SliderDots(
                    // widget
                    currentSlide: _currentSlide, // current slide
                    dotIndex: index,
                  ),
                ),
              ),

              ///** End of Special Section **///

              ///** Categories Section **///
              // category text with clikable function
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [SectionTitle(sectionTitle: 'Categories')],
                ),
              ),
              // category icons
              CategoryIcons(),

              ///** End of Categories Section **///

              /// ** Popular Services Section **///
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [SectionTitle(sectionTitle: 'Popular Brands')],
                ),
              ),
              PopularBrandsCards(),

              ///** End of Popular Section **///
              const SizedBox(height: 30),

              /// ** Brands Section **///
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
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
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [SectionTitle(sectionTitle: 'Double Brands')],
                ),
              ),
              DoubleBrandList(items: doubleBrandItems),

              /// ** End of brand Section **///

              /// /// ** End of Chips Section **///
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [SectionTitle(sectionTitle: 'Brands Chips')],
                ),
              ),
              ChipDataSet(chipData: chipsItems),
              const SizedBox(height: 10),

              /// ** End of chips Section **///
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
        ),
      ),
    );
  }
}
