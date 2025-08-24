import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
        primary: AppColors.primary,
        onPrimary: Colors.black,
        surface: AppColors.surface,
        onSurface: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.surface,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: 'BebasNeue',
          fontSize: 24,
          letterSpacing: 2,
          color: AppColors.primary,
          fontWeight: FontWeight.w400,
        ),
      ),
      textTheme: const TextTheme(
        // Timer display text style
        displayLarge: TextStyle(
          fontFamily: 'BebasNeue',
          fontSize: 140,
          fontWeight: FontWeight.w400,
          color: Colors.black,
          letterSpacing: -5,
          height: 1.0,
        ),
        // App title style
        displayMedium: TextStyle(
          fontFamily: 'BebasNeue',
          fontSize: 32,
          fontWeight: FontWeight.w400,
          color: Colors.white,
          letterSpacing: 2,
        ),
        // Button labels
        labelLarge: TextStyle(
          fontFamily: 'BebasNeue',
          fontSize: 20,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.5,
        ),
        // Voice indicator text
        bodyLarge: TextStyle(
          fontFamily: 'BebasNeue',
          fontSize: 18,
          fontWeight: FontWeight.w400,
          letterSpacing: 2,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'BebasNeue',
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.black,
          elevation: 0,
          minimumSize: const Size(80, 80),
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(20),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: BorderSide(color: AppColors.primary, width: 3),
          elevation: 0,
          minimumSize: const Size(80, 80),
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(20),
        ),
      ),
    );
  }
}