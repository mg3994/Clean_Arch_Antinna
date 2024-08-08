// import 'dart:ui' as ui;

// import 'package:antinna/ui_kit/src/inherited/backed_inherted_widget.dart';
// import 'package:flutter/material.dart';

// enum DeviceType {
//   unknown,
//   phone,
//   tablet,
// }

// enum DeviceOrientation {
//   unknown,
//   portrait,
//   landscape,
// }

// @immutable
// class DeviceTypeOrientationState {
//   const DeviceTypeOrientationState({
//     required this.deviceType,
//     required this.orientation,
//   });

//   const DeviceTypeOrientationState.unknown()
//       : deviceType = DeviceType.unknown,
//         orientation = DeviceOrientation.unknown;

//   final DeviceType deviceType;
//   final DeviceOrientation orientation;

//   bool get isTablet => deviceType == DeviceType.tablet;

//   bool get isPhone => deviceType == DeviceType.phone;

//   bool get isLandscape => orientation == DeviceOrientation.landscape;

//   bool get isPortrait => orientation == DeviceOrientation.portrait;

//   DeviceTypeOrientationState copyWith({
//     DeviceType? deviceType,
//     DeviceOrientation? orientation,
//   }) {
//     return DeviceTypeOrientationState(
//       deviceType: deviceType ?? this.deviceType,
//       orientation: orientation ?? this.orientation,
//     );
//   }
// }

// class DeviceTypeOrientationNotifier extends ChangeNotifier
//     with WidgetsBindingObserver {
//   DeviceTypeOrientationNotifier();

//   var _state = const DeviceTypeOrientationState.unknown();

//   bool get isTablet => _state.isTablet;

//   bool get isPhone => _state.isPhone;

//   bool get isLandscape => _state.isLandscape;

//   bool get isPortrait => _state.isPortrait;

//   void init() {
//     WidgetsBinding.instance.addObserver(this);
//     updateDeviceType();
//   }

//   @override
//   void didChangeMetrics() {
//     super.didChangeMetrics(); //usefull For Manish //! TODO: support
//     updateDeviceType();
//   }

//   void updateDeviceType() {
//     final view = ui.PlatformDispatcher.instance.implicitView!;
//     final size = view.physicalSize / view.devicePixelRatio;

//     bool updated = false;

//     final deviceType = (size.shortestSide < 600) //
//         ? DeviceType.phone
//         : DeviceType.tablet;
//     if (deviceType != _state.deviceType) {
//       debugPrint('Device Type changed to: $deviceType');
//       _state = _state.copyWith(deviceType: deviceType);
//       updated = true;
//     }

//     final orientation = (size.width < size.height) //
//         ? DeviceOrientation.portrait
//         : DeviceOrientation.landscape;
//     if (orientation != _state.orientation) {
//       debugPrint('Orientation changed to: $orientation');
//       _state = _state.copyWith(orientation: orientation);
//       updated = true;
//     }

//     if (updated) {
//       notifyListeners();
//     }
//   }

//   @override
//   void dispose() {
//     WidgetsBinding.instance.removeObserver(this);
//     super.dispose();
//   }
// }

// class AntinnaDeviceTypeBuilder extends StatelessWidget {
//   const AntinnaDeviceTypeBuilder(
//       {super.key, required this.builder, this.child});

//   // final Widget Function(BuildContext context) builder;
//   final Widget Function(
//     BuildContext context,
//     DeviceTypeOrientationState state,
//     Widget? child,
//   ) builder;

//   final Widget? child;
//   @override
//   Widget build(BuildContext context) => AnimatedBuilder(
//         animation: context.deviceType,
//         builder: (BuildContext context, Widget? child) {
//           final state = context.deviceType._state;
//           return builder(context, state, child);
//         },
//         child: child,
//       );
// }

// // extension DeviceTypeContext on BuildContext {
// //   DeviceTypeOrientationNotifier get deviceTypeNotifier =>
// //       read<DeviceTypeOrientationNotifier>();

// //   DeviceTypeOrientationState get deviceType =>
// //       watch<DeviceTypeOrientationNotifier>()._state;
// // }

/////////////////////////////
///
///
///

import 'package:antinna/ui_kit/src/inherited/backed_inherted_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';

enum DeviceType { unknown, phone, tablet }

enum DeviceOrientation { unknown, portrait, landscape }

@immutable
class DeviceTypeOrientationState {
  const DeviceTypeOrientationState({
    required this.deviceType,
    required this.orientation,
    required this.brightness,
    required this.locales,
  });

  const DeviceTypeOrientationState.unknown()
      : deviceType = DeviceType.unknown,
        orientation = DeviceOrientation.unknown,
        brightness = Brightness.light,
        locales = const [];

  final DeviceType deviceType;
  final DeviceOrientation orientation;
  final Brightness brightness;

  final List<Locale> locales;

  bool get isTablet => deviceType == DeviceType.tablet;

  bool get isPhone => deviceType == DeviceType.phone;

  bool get isLandscape => orientation == DeviceOrientation.landscape;

  bool get isPortrait => orientation == DeviceOrientation.portrait;

  bool get isDarkMode => brightness == Brightness.dark;
  Locale get preferredLocale =>
      locales.isNotEmpty ? locales.first : const Locale('en', 'US');

  // List<Locale> get locales => _state.locales;

  DeviceTypeOrientationState copyWith({
    DeviceType? deviceType,
    DeviceOrientation? orientation,
    Brightness? brightness,
    double? textScaleFactor,
    List<Locale>? locales,
    AccessibilityFeatures? accessibilityFeatures,
  }) {
    return DeviceTypeOrientationState(
      deviceType: deviceType ?? this.deviceType,
      orientation: orientation ?? this.orientation,
      brightness: brightness ?? this.brightness,
      locales: locales ?? this.locales,
    );
  }
}

class DeviceTypeOrientationNotifier extends ChangeNotifier
    with WidgetsBindingObserver {
  DeviceTypeOrientationNotifier();

  var _state = const DeviceTypeOrientationState.unknown();

  bool get isTablet => _state.isTablet;

  bool get isPhone => _state.isPhone;

  bool get isLandscape => _state.isLandscape;

  bool get isPortrait => _state.isPortrait;

  bool get isDarkMode => _state.isDarkMode;

  List<Locale> get locales => _state.locales;

  Locale get preferredLocale =>
      locales.isNotEmpty ? locales.first : const Locale('en', 'US');

  void init() {
    WidgetsBinding.instance.addObserver(this);
    updateDeviceType();
    updateLocales(PlatformDispatcher.instance.locales);
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    updateDeviceType();
  }

  // @override
  // void didHaveMemoryPressure() { //i need logic for this
  //   super.didHaveMemoryPressure();
  //   // Handle low memory scenario //TODO:handle
  //   debugPrint('Low memory warning received');
  // }

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    updateDeviceType();
  }

  @override
  void didChangeLocales(List<Locale>? locales) {
    super.didChangeLocales(locales);
    updateLocales(locales);
  }

  void updateDeviceType() {
    final view = PlatformDispatcher.instance.implicitView!;
    final size = view.physicalSize / view.devicePixelRatio;

    bool updated = false;

    final deviceType = (size.shortestSide < 600) //
        ? DeviceType.phone
        : DeviceType.tablet;
    if (deviceType != _state.deviceType) {
      debugPrint('Device Type changed to: $deviceType');
      _state = _state.copyWith(deviceType: deviceType);
      updated = true;
    }

    final orientation = (size.width < size.height) //
        ? DeviceOrientation.portrait
        : DeviceOrientation.landscape;
    if (orientation != _state.orientation) {
      debugPrint('Orientation changed to: $orientation');
      _state = _state.copyWith(orientation: orientation);
      updated = true;
    }

    final brightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;
    if (brightness != _state.brightness) {
      debugPrint('Brightness changed to: $brightness');
      _state = _state.copyWith(brightness: brightness);
      updated = true;
    }

    if (updated) {
      notifyListeners();
    }
  }

  void updateLocales(List<Locale>? locales) {
    if (locales != null && locales != _state.locales) {
      debugPrint('Locales changed to: $locales');
      _state = _state.copyWith(locales: locales);
      notifyListeners();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}

class AntinnaDeviceTypeBuilder extends StatelessWidget {
  const AntinnaDeviceTypeBuilder({
    super.key,
    required this.builder,
    this.child,
  });

  final Widget Function(
    BuildContext context,
    DeviceTypeOrientationState state,
    Widget? child,
  ) builder;

  final Widget? child;
  @override
  Widget build(BuildContext context) => AnimatedBuilder(
        animation: context.deviceType,
        builder: (BuildContext context, Widget? child) {
          final state = context.deviceType._state;
          return builder(context, state, child);
        },
        child: child,
      );
}

// extension DeviceTypeContext on BuildContext {
//   DeviceTypeOrientationNotifier get deviceTypeNotifier =>
//       read<DeviceTypeOrientationNotifier>();

//   DeviceTypeOrientationState get deviceType =>
//       watch<DeviceTypeOrientationNotifier>()._state;
// }
