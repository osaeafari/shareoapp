import 'package:flutter/material.dart';

class PopularBrandsText extends StatelessWidget {
  const PopularBrandsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Popular Brands',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
    // TextButton(
    //   onPressed:
    //       () => Navigator.push(
    //         context,
    //         MaterialPageRoute(
    //           builder: (_) => const ServiceListScreen(),
    //         ),
    //       ),
    //   child: const Text(
    //     'See all',
    //     style: TextStyle(color: Colors.green),
    //   ),
    // ),;
  }
}
