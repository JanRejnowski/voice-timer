import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF00FF00);
  static const Color backgroundColor = Color(0xFF121212);
  static const Color surfaceColor = Color(0xFF1E1E1E);
  static const Color onSurfaceColor = Color(0xFFFFFFFF);
  static const Color onPrimaryColor = Color(0xFF000000);
  
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        primary: primaryColor,
        onPrimary: onPrimaryColor,
        surface: surfaceColor,
        onSurface: onSurfaceColor,
      ),
      scaffoldBackgroundColor: backgroundColor,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontFamily: 'BebasNeue',
          color: onSurfaceColor,
        ),
        displayMedium: TextStyle(
          fontFamily: 'BebasNeue',
          color: onSurfaceColor,
        ),
        displaySmall: TextStyle(
          fontFamily: 'BebasNeue',
          color: onSurfaceColor,
        ),
        headlineLarge: TextStyle(
          fontFamily: 'BebasNeue',
          color: onSurfaceColor,
        ),
        headlineMedium: TextStyle(
          fontFamily: 'BebasNeue',
          color: onSurfaceColor,
        ),
        headlineSmall: TextStyle(
          fontFamily: 'BebasNeue',
          color: onSurfaceColor,
        ),
        titleLarge: TextStyle(
          fontFamily: 'BebasNeue',
          color: onSurfaceColor,
        ),
        titleMedium: TextStyle(
          fontFamily: 'BebasNeue',
          color: onSurfaceColor,
        ),
        titleSmall: TextStyle(
          fontFamily: 'BebasNeue',
          color: onSurfaceColor,
        ),
        bodyLarge: TextStyle(
          color: onSurfaceColor,
        ),
        bodyMedium: TextStyle(
          color: onSurfaceColor,
        ),
        bodySmall: TextStyle(
          color: onSurfaceColor,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: onPrimaryColor,
          shape: const CircleBorder(),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryColor,
          side: const BorderSide(color: primaryColor),
          shape: const CircleBorder(),
        ),
      ),
    );
  }
}