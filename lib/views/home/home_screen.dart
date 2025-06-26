import 'package:flutter/material.dart';
import '../../widgets/category_icons.dart';
import '../../widgets/popular_brands_text.dart';
import '../../widgets/brand_card.dart';
import '../../widgets/brand_text.dart';
import '../../widgets/category_text.dart';
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
              CategoryText(),
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
                  children: [PopularBrandsText()],
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
                  children: [BrandText()],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: BrandCard(),
              ),

              /// ** End of brand Section **///
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
