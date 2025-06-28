import 'package:flutter/material.dart';
import 'package:shareoapp/core/constants/app_colors.dart';

class ChipData {
  final String image;
  final String label;

  ChipData({required this.image, required this.label});
}

class ChipDataSet extends StatelessWidget {
  final List<ChipData> chipData;
  const ChipDataSet({super.key, required this.chipData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder:
              (context, index) => Container(
                width: 120,
                margin: EdgeInsets.only(left: index == 0 ? 24 : 8, right: 4),
                child: Chip(
                  avatar: CircleAvatar(
                    backgroundImage: AssetImage(chipData[index].image),
                  ),
                  // ignore: deprecated_member_use
                  backgroundColor: AppColors.primary.withOpacity(0.15),
                  label: Text(chipData[index].label),
                ),
              ),
        ),
      ),
    );
  }
}
