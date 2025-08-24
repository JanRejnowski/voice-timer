import 'package:flutter/material.dart';
import '../../shared/widgets/timer_control_button.dart';

class StartStopButton extends StatelessWidget {
  final bool isRunning;
  final VoidCallback onPressed;

  const StartStopButton({
    required this.isRunning,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TimerControlButton(
      onPressed: onPressed,
      label: isRunning ? 'STOP' : 'START',
      icon: isRunning ? Icons.pause : Icons.play_arrow,
      filled: true,
    );
  }
}