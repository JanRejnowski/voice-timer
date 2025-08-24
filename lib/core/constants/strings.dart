import 'package:flutter/material.dart';

@immutable
class AppStrings {
  // App title
  static const String appTitle = 'Voice Timer';
  static const String appBarTitle = 'STOPWATCH';
  
  // Button labels
  static const String start = 'START';
  static const String stop = 'STOP';
  static const String reset = 'RESET';
  
  // Voice status
  static const String voiceReady = 'Voice Ready';
  static const String voiceDisabled = 'Voice Disabled';
  
  // Permission dialog
  static const String permissionsRequired = 'Permissions Required';
  static const String permissionsMessage = 
      'Voice Timer needs microphone and speech recognition permissions to provide hands-free timer control. '
      'Please enable these permissions in Settings to use voice features.';
  static const String cancel = 'Cancel';
  static const String openSettings = 'Open Settings';
}