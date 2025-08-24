import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/timer/timer_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voice Timer',
      theme: AppTheme.darkTheme,
      home: const TimerPage(voiceEnabled: false), // Testing with voice disabled
    );
  }
}