import 'package:flutter/material.dart';
import '../../../core/constants/strings.dart';
import '../../../shared/widgets/timer_control_button.dart';

class ResetButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ResetButton({
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TimerControlButton(
      onPressed: onPressed,
      label: AppStrings.reset,
      icon: Icons.refresh,
      filled: false,
    );
  }
}