import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import '../constants/strings.dart';

class PermissionService {
  static Future<bool> requestVoicePermissions(BuildContext context) async {
    log('Requesting voice permissions...');
    
    Map<Permission, PermissionStatus> statuses = await [
      Permission.microphone,
      Permission.speech,
    ].request();
    
    final micPermission = statuses[Permission.microphone];
    final speechPermission = statuses[Permission.speech];
    
    log('Microphone permission: $micPermission');
    log('Speech permission: $speechPermission');
    
    final bothGranted = micPermission == PermissionStatus.granted && 
                       speechPermission == PermissionStatus.granted;
    
    if (!bothGranted && context.mounted) {
      await _showPermissionDeniedDialog(context);
    }
    
    return bothGranted;
  }
  
  static Future<void> _showPermissionDeniedDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(AppStrings.permissionsRequired),
          content: const Text(AppStrings.permissionsMessage),
          actions: <Widget>[
            TextButton(
              child: const Text(AppStrings.cancel),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text(AppStrings.openSettings),
              onPressed: () {
                Navigator.of(context).pop();
                openAppSettings();
              },
            ),
          ],
        );
      },
    );
  }
  
  static Future<bool> checkVoicePermissions() async {
    final micStatus = await Permission.microphone.status;
    final speechStatus = await Permission.speech.status;
    
    return micStatus == PermissionStatus.granted && 
           speechStatus == PermissionStatus.granted;
  }
}