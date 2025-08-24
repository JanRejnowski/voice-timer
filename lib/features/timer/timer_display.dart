import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class TimerDisplay extends StatefulWidget {
  final Stopwatch stopwatch;
  
  const TimerDisplay({
    required this.stopwatch,
    super.key,
  });

  @override
  State<TimerDisplay> createState() => _TimerDisplayState();
}

class _TimerDisplayState extends State<TimerDisplay> with SingleTickerProviderStateMixin {
  late Ticker _ticker;

  @override
  void initState() {
    super.initState();
    _ticker = createTicker((elapsed) {
      setState(() {});
    });
    _ticker.start();
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  String _formatTime(Duration duration) {
    final totalSeconds = duration.inMilliseconds / 1000.0;
    return totalSeconds.toStringAsFixed(1);
  }

  @override
  Widget build(BuildContext context) {
    final elapsed = widget.stopwatch.elapsed;
    final timeString = _formatTime(elapsed);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        timeString,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.displayLarge?.copyWith(
          fontSize: 72,
          fontWeight: FontWeight.normal,
          color: Theme.of(context).colorScheme.onPrimary,
          fontFamily: 'BebasNeue',
        ),
      ),
    );
  }
}