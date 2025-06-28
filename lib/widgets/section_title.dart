import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String sectionTitle;

  const SectionTitle({super.key, required this.sectionTitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      sectionTitle,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
