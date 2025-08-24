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
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Theme.of(context).colorScheme.onPrimary,
                    shape: const CircleBorder(),
                    padding: EdgeInsets.zero,
                  ),
                  child: Icon(
                    icon,
                    size: AppDimensions.iconSize,
                  ),
                )
              : OutlinedButton(
                  onPressed: onPressed,
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Theme.of(context).colorScheme.primary,
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: AppDimensions.borderWidth,
                    ),
                    shape: const CircleBorder(),
                    padding: EdgeInsets.zero,
                  ),
                  child: Icon(
                    icon,
                    size: AppDimensions.iconSize,
                  ),
                ),
        ),
        const SizedBox(height: AppDimensions.spacingSmall),
        Text(
          label,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ],
    );
  }
}