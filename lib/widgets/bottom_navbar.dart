import 'package:flutter/material.dart';

import '../core/constants/app_colors.dart';

class BottomNavbar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int>? onTap;

  const BottomNavbar({super.key, this.currentIndex = 0, this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: Colors.grey,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.insights), label: 'Analytics'),
        BottomNavigationBarItem(
          icon: Icon(Icons.paid),
          label: 'Points & Payments',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      ],
    );
  }
}
