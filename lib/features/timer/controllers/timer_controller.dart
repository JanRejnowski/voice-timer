import 'package:flutter/material.dart';

class TimerController extends ChangeNotifier {
  final Stopwatch stopwatch = Stopwatch();
  
  bool get isRunning => stopwatch.isRunning;
  Duration get elapsed => stopwatch.elapsed;
  
  void start() {
    if (!stopwatch.isRunning) {
      stopwatch.start();
      notifyListeners();
    }
  }
  
  void stop() {
    if (stopwatch.isRunning) {
      stopwatch.stop();
      notifyListeners();
    }
  }
  
  void toggle() {
    if (stopwatch.isRunning) {
      stop();
    } else {
      start();
    }
  }
  
  void reset() {
    stopwatch.reset();
    notifyListeners();
  }
  
  @override
  void dispose() {
    stopwatch.stop();
    super.dispose();
  }
}