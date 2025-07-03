import 'package:flutter/material.dart';

import '../../core/constants/app_text_styles.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Analytics', style: AppTextStyles.heading));
  }
}
