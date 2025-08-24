import 'package:flutter/material.dart';

@immutable
class TimeFormatter {
  static String formatElapsedTime(Duration duration) {
    final totalSeconds = duration.inMilliseconds / 1000.0;
    return totalSeconds.toStringAsFixed(1);
  }
}