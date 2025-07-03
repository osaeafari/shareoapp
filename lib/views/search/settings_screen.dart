import 'package:flutter/material.dart';

import '../../core/constants/app_text_styles.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Settings', style: AppTextStyles.heading));
  }
}
