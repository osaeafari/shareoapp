import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';

class GeneralAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;

  const GeneralAppbar({super.key, this.title});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title ?? '',
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          color: AppColors.background,
        ),
      ),
      backgroundColor: AppColors.primary,
    );
  }
}
