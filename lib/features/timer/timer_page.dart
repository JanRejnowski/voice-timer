import 'package:flutter/material.dart';
import 'timer_display.dart';
import 'start_stop_button.dart';
import 'reset_button.dart';
import 'widgets/voice_status_indicator.dart';
import 'timer_controller.dart';

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
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Center(
                child: TimerDisplay(stopwatch: _timerController.stopwatch),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
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
                  ),
                  Expanded(
                    child: Center(
                      child: VoiceStatusIndicator(
                        isEnabled: widget.voiceEnabled,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}