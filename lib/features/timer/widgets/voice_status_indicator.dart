import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';

class VoiceStatusIndicator extends StatelessWidget {
  final bool isListening;
  final bool isEnabled;

  const VoiceStatusIndicator({
    this.isListening = false,
    this.isEnabled = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 40),
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: AppColors.primary,
          width: 2,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.mic,
            color: isListening ? AppColors.primary : AppColors.primary.withValues(alpha: 0.5),
            size: 24,
          ),
          const SizedBox(width: 12),
          Text(
            isListening ? 'LISTENING...' : (isEnabled ? 'VOICE READY' : 'VOICE DISABLED'),
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}