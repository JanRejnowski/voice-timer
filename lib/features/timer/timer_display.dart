import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import '../../core/utils/time_formatter.dart';
import '../../core/constants/dimensions.dart';

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
      if (widget.stopwatch.isRunning) {
        setState(() {});
      }
    });
    _ticker.start();
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final elapsed = widget.stopwatch.elapsed;
    final timeString = TimeFormatter.formatElapsedTime(elapsed);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: AppDimensions.spacingXLarge,
        horizontal: AppDimensions.spacingLarge,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
      ),
      child: Text(
        timeString,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.displayLarge?.copyWith(
          fontSize: AppDimensions.timerFontSize,
          fontWeight: FontWeight.normal,
          color: Theme.of(context).colorScheme.onPrimary,
          fontFamily: 'BebasNeue',
        ),
      ),
    );
  }
}