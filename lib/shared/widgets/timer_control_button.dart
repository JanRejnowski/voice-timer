import 'package:flutter/material.dart';

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
          width: 120,
          height: 120,
          child: filled
              ? ElevatedButton(
                  onPressed: onPressed,
                  child: Icon(
                    icon,
                    size: 48,
                  ),
                )
              : OutlinedButton(
                  onPressed: onPressed,
                  child: Icon(
                    icon,
                    size: 48,
                  ),
                ),
        ),
        const SizedBox(height: 12),
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