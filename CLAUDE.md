# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Flutter-based voice-activated timer iOS app designed for hands-free use during calisthenics exercises. The app allows users to control a timer using voice commands ("start" and "stop").

A complete plan for the project has been written to @plan.md.

## Key Requirements

- Voice-activated timer with "start" and "stop" commands
- Dark mode only
- Beep sound feedback when voice commands are recognized
- Simple UI with timer display and manual start/stop/reset buttons
- Built for iOS using Flutter

## Development Commands

### Running the App

```bash
flutter run
```

### Linting

```bash
flutter analyze
```

### Testing

```bash
flutter test
```

### Building for iOS

```bash
flutter build ios
```

## Architecture Guidelines

### Folder Structure

Create a proper separation of concerns with the following structure:

- `lib/features/` - Feature-based organization
  - `lib/features/timer/controllers/` - Timer state management and business logic
  - `lib/features/timer/pages/` - Timer page UI components
  - `lib/features/timer/widgets/` - Timer-specific reusable widgets
- `lib/shared/` - Shared widgets and utilities across features
- `lib/core/` - Core functionality and configuration
  - `lib/core/constants/` - Centralized constants (dimensions, strings, colors)
  - `lib/core/services/` - App services (permissions, audio, etc.)
  - `lib/core/theme/` - Theme configuration
  - `lib/core/utils/` - Utility functions and formatters

### Widget Design Principles

- Create small, composable widgets over large monolithic ones
- Use flex values in Rows/Columns for responsive design
- Define theme properties in MaterialApp's theme rather than hardcoding
- Extract reusable widgets into separate files with clear responsibilities
- Use constants from `AppDimensions` and `AppStrings` instead of magic numbers/strings
- Prefer stateless widgets when possible; use controllers for complex state management

### Code Style

- Use `log` from `dart:developer` for logging (not `print` or `debugPrint`)
- Follow Flutter's linting rules defined in `analysis_options.yaml`
- Use constants from `lib/core/constants/` instead of hardcoding dimensions, strings, or colors
- Extract utility functions to `lib/core/utils/` for reusability
- Use `ChangeNotifier`-based controllers for state management when `setState` becomes insufficient
- Import paths should be relative within features, absolute for core/shared dependencies

## Assets

- Custom font: `assets/BebasNeue-Regular.ttf`
- Beep sound: `assets/beep-sound-8333.mp3`

## Platform-Specific Notes

- iOS configuration is in the `ios/` directory
- Microphone and speaker permissions must be requested on app startup
- Features should gracefully degrade if permissions are denied

## Development Tips

- No need to run `flutter pub get` after installing packages. The IDE does this automatically
