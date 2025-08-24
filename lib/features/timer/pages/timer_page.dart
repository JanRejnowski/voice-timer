import 'package:flutter/material.dart';
import '../widgets/timer_display.dart';
import '../widgets/start_stop_button.dart';
import '../widgets/reset_button.dart';
import '../widgets/voice_status_indicator.dart';
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
        title: const Text('STOPWATCH'),
        leading: IconButton(
          icon: Icon(Icons.settings, color: Theme.of(context).colorScheme.primary),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          // Timer Display Section
          TimerDisplay(stopwatch: _timerController.stopwatch),
          
          // Controls Section
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.surface,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Buttons Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      StartStopButton(
                        isRunning: _timerController.isRunning,
                        onPressed: _timerController.toggle,
                      ),
                      ResetButton(
                        onPressed: _timerController.reset,
                      ),
                    ],
                  ),
                  
                  // Voice Indicator
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: VoiceStatusIndicator(
                      isEnabled: widget.voiceEnabled,
                      isListening: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}