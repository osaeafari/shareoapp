import 'package:flutter/material.dart';

class BrandText extends StatelessWidget {
  const BrandText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Brands',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
