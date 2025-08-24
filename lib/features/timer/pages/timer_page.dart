import 'package:flutter/material.dart';
import '../../../core/constants/strings.dart';
import '../widgets/timer_display.dart';
import '../widgets/timer_controls_section.dart';
import '../controllers/timer_controller.dart';

class TimerPage extends StatefulWidget {
  final bool voiceEnabled;
  
  const TimerPage({
    this.voiceEnabled = false,
    super.key,
  });

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  late final TimerController _timerController;
  
  @override
  void initState() {
    super.initState();
    _timerController = TimerController();
    _timerController.addListener(() {
      setState(() {});
    });
  }
  
  @override
  void dispose() {
    _timerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.appBarTitle),
        leading: IconButton(
          icon: Icon(Icons.settings, color: Theme.of(context).colorScheme.primary),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          TimerDisplay(stopwatch: _timerController.stopwatch),
          Expanded(
            child: TimerControlsSection(
              isRunning: _timerController.isRunning,
              onToggle: _timerController.toggle,
              onReset: _timerController.reset,
              voiceEnabled: widget.voiceEnabled,
              isListening: false,
            ),
          ),
        ],
      ),
    );
  }
}