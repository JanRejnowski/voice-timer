import 'dart:developer';
import 'package:speech_to_text/speech_to_text.dart';

class PermissionService {
  static Future<bool> requestVoicePermissions() async {
    try {
      log('Initializing speech to text...');
      
      final speech = SpeechToText();
      
      // Initialize speech to text - this should trigger permission dialogs
      final bool available = await speech.initialize(
        onStatus: (status) => log('Speech status: $status'),
        onError: (error) => log('Speech error: $error'),
      );
      
      log('Speech to text available: $available');
      
      if (available) {
        // Check if we have permissions
        final bool hasPermission = await speech.hasPermission;
        log('Has permission: $hasPermission');
        return hasPermission;
      }
      
      return false;
    } catch (e) {
      log('Error requesting voice permissions: $e');
      return false;
    }
  }

  static Future<bool> hasVoicePermissions() async {
    try {
      final speech = SpeechToText();
      final bool available = await speech.initialize();
      
      if (available) {
        return await speech.hasPermission;
      }
      
      return false;
    } catch (e) {
      log('Error checking voice permissions: $e');
      return false;
    }
  }

  // Keep the old method for backward compatibility
  static Future<bool> requestMicrophonePermission() async {
    return requestVoicePermissions();
  }

  static Future<bool> hasMicrophonePermission() async {
    return hasVoicePermissions();
  }
  
  // Renamed from checkVoicePermissions for consistency
  static Future<bool> checkVoicePermissions() async {
    return hasVoicePermissions();
  }
}