import 'package:flutter/material.dart';
import '../../core/constants/dimensions.dart';

class TimerControlButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final bool filled;
  final IconData icon;

  const TimerControlButton({
    required this.onPressed,
    required this.label,
    required this.icon,
    this.filled = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: AppDimensions.buttonSize,
          height: AppDimensions.buttonSize,
          child: filled
              ? ElevatedButton(
                  onPressed: onPressed,
                  child: Icon(
                    icon,
                    size: AppDimensions.buttonIconSize,
                  ),
                )
              : OutlinedButton(
                  onPressed: onPressed,
                  child: Icon(
                    icon,
                    size: AppDimensions.buttonIconSize,
                  ),
                ),
        ),
        SizedBox(height: AppDimensions.spacingMedium),
        Text(
          label.toUpperCase(),
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}