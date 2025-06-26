import 'package:flutter/material.dart';

class CategoryText extends StatelessWidget {
  const CategoryText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Categories',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          // TextButton(
          //   onPressed:
          //       () => Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (_) => const CategoryScreen(),
          //         ),
          //       ),
          //   child: const Text(
          //     'See all',
          //     style: TextStyle(color: Colors.green),
          //   ),
          // ),
        ],
      ),
    );
  }
}
