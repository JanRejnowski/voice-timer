import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/strings.dart';

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
      margin: EdgeInsets.symmetric(horizontal: AppDimensions.voiceIndicatorMarginH),
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.voiceIndicatorPaddingH,
        vertical: AppDimensions.voiceIndicatorPaddingV,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(AppDimensions.voiceIndicatorBorderRadius),
        border: Border.all(
          color: AppColors.primary,
          width: AppDimensions.voiceIndicatorBorderWidth,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.mic,
            color: isListening ? AppColors.primary : AppColors.primary.withValues(alpha: 0.5),
            size: AppDimensions.voiceIndicatorIconSize,
          ),
          SizedBox(width: AppDimensions.spacingMedium),
          Text(
            isListening 
                ? AppStrings.voiceListening 
                : (isEnabled ? AppStrings.voiceReady : AppStrings.voiceDisabled),
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}