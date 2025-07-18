import 'package:flutter/material.dart';
import 'package:shareoapp/views/home/home_screen.dart';
import 'core/constants/app_colors.dart';
import 'core/constants/app_text_styles.dart';
import 'views/splash/splash_screen.dart'; // Create this later

void main() {
  runApp(ShareoApp());
}

class ShareoApp extends StatelessWidget {
  const ShareoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shareoapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          background: AppColors.background,
          error: AppColors.error,
          secondary: AppColors.accent,
        ),
        textTheme: const TextTheme(bodyMedium: AppTextStyles.body),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primary,
          titleTextStyle: AppTextStyles.heading,
          foregroundColor: Colors.white,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
