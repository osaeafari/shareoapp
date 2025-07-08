import 'package:flutter/material.dart';
import 'package:shareoapp/views/points/points_screen.dart';
import 'package:shareoapp/views/search/settings_screen.dart';
import 'package:shareoapp/widgets/general_appbar.dart';
import 'home_content.dart';
import '../../widgets/home_appbar.dart';
import '../../widgets/bottom_navbar.dart';
import '../analytics/analytics_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<String?> _titles = [
    null,
    'Analytics',
    'Points & Payments',
    'Settings',
  ];

  void _onTabChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          _currentIndex == 0
              ? const HomeAppbar()
              : GeneralAppbar(title: _titles[_currentIndex] ?? ''),

      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: const [
            HomeContent(),
            AnalyticsScreen(),
            PointsAndPayments(),
            SettingsScreen(),
          ],
        ),
      ),

      // Bottom navigation bar
      bottomNavigationBar: BottomNavbar(
        currentIndex: _currentIndex,
        onTap: _onTabChanged,
      ),
    );
  }
}
