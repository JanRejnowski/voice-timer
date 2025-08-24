import 'package:flutter/material.dart';
import '../../../core/constants/dimensions.dart';
import 'start_stop_button.dart';
import 'reset_button.dart';
import 'voice_status_indicator.dart';

class TimerControlsSection extends StatelessWidget {
  final bool isRunning;
  final VoidCallback onToggle;
  final VoidCallback onReset;
  final bool voiceEnabled;
  final bool isListening;

  const TimerControlsSection({
    required this.isRunning,
    required this.onToggle,
    required this.onReset,
    required this.voiceEnabled,
    this.isListening = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Buttons Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StartStopButton(
                isRunning: isRunning,
                onPressed: onToggle,
              ),
              ResetButton(
                onPressed: onReset,
              ),
            ],
          ),
          
          // Voice Indicator
          Padding(
            padding: EdgeInsets.only(bottom: AppDimensions.spacingXXLarge),
            child: VoiceStatusIndicator(
              isEnabled: voiceEnabled,
              isListening: isListening,
            ),
          ),
        ],
      ),
    );
  }
}