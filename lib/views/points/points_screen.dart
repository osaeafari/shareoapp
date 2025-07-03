import 'package:flutter/material.dart';

import '../../core/constants/app_text_styles.dart';

class PointsAndPayments extends StatelessWidget {
  const PointsAndPayments({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Points And Payments', style: AppTextStyles.heading),
    );
  }
}
