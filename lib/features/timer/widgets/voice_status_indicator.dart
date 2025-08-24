import 'package:flutter/material.dart';
import '../../../core/constants/dimensions.dart';

class VoiceStatusIndicator extends StatelessWidget {
  final bool isEnabled;

  const VoiceStatusIndicator({
    required this.isEnabled,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primaryColor = theme.colorScheme.primary;
    final disabledColor = theme.colorScheme.onSurface.withValues(alpha: 0.6);
    
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.voiceIndicatorPaddingH,
        vertical: AppDimensions.voiceIndicatorPaddingV,
      ),
      decoration: ShapeDecoration(
        shape: StadiumBorder(
          side: BorderSide(
            color: primaryColor,
            width: AppDimensions.borderWidth,
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.mic,
            color: isEnabled ? primaryColor : disabledColor,
            size: AppDimensions.voiceIconSize,
          ),
          const SizedBox(width: AppDimensions.spacingMedium),
          Text(
            isEnabled ? 'Voice Ready' : 'Voice Disabled',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: isEnabled ? primaryColor : disabledColor,
            ),
          ),
        ],
      ),
    );
  }
}