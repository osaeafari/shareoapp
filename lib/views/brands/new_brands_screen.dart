import 'package:flutter/material.dart';
import 'package:shareoapp/core/constants/app_colors.dart';
//import 'package:shareoapp/core/constants/app_text_styles.dart';

class NewBrandsScreen extends StatelessWidget {
  const NewBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Post A New Brand',
          style: TextStyle(color: AppColors.background),
        ),
      ),
      body: const Center(child: Text('New Brand Screen')),
    );
  }
}
