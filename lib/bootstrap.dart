// import 'dart:async';
// import 'dart:io';

// import 'package:dependencies/dependencies.dart';
// import 'package:flutter/material.dart';
// import 'package:settings/settings.dart';

// import 'app/app.dart';

// void runAppWithRecordError() {
//   FlutterError.onError = (details) {
//     if (details.exception is! SocketException &&
//         details.exception is! FirebaseException) {
//       GetIt.I<RecordErrorUseCase>().call(
//         RecordErrorParams(
//           exception: details.exception is Exception
//               ? details.exception as Exception
//               : null,
//           level: SentryLevel.info,
//           tags: const ['unhandle-error', 'flutter-error'],
//           stackTrace: details.stack,
//         ),
//       );
//     }
//   };

//   const app = App();
//   runZonedGuarded(
//     () => runApp(app),
//     (exception, stackTrace) {
//       GetIt.I<RecordErrorUseCase>().call(
//         RecordErrorParams(
//           exception: exception is Exception ? exception : null,
//           level: SentryLevel.info,
//           tags: const ['unhandle-error', 'flutter-error'],
//           stackTrace: stackTrace,
//         ),
//       );
//     },
//   );
// }

import 'dart:io';

import 'package:antinna/config/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

import 'ui_kit/src/inherited/backed_inherted_widget.dart';
import 'ui_kit/src/utils/component_init.dart';

class AntinnaApp extends StatefulWidget {
  const AntinnaApp({super.key, required this.config});

  final FlavorConfig config;
  @override
  State<AntinnaApp> createState() => _AntinnaAppState();
}

class _AntinnaAppState extends State<AntinnaApp> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  NavigatorState? get navigatorState => _navigatorKey.currentState;
  final _deviceTypeNotifier = DeviceTypeOrientationNotifier();
  late Future<Backend> _appLoader;

  @override
  void initState() {
    _deviceTypeNotifier.init();
    RendererBinding.instance.deferFirstFrame();
    super.initState();
    Intl.defaultLocale = PlatformDispatcher.instance.locale
        .toLanguageTag(); //usefull For Manish //! TODO: support
    _appLoader = _loadApp();
  }

  Future<Backend> _loadApp() async {
    await Future.delayed(Duration(seconds: 5)); //TODO: remove in future
    if (widget.config.flavor == Flavor.development) {
      // EquatableConfig.stringify = true;
    }
    await initializeDateFormatting(); //usefull For Manish //! TODO: support
    final backend = await Backend.init(
      widget.config,
      _deviceTypeNotifier,
    );
    // _isLoggedIn = backend.authRepo.isLoggedIn;
    // _subIsLoggedIn = backend
    //     .authRepo //
    //     .streamIsLoggedIn
    //     .listen(_onLoginStateChanged); //usefull For Manish //! TODO: support
    // if (mounted) {
    //   await MainScreen.precacheImages();
    // }
    return backend;
  }

  @override
  void didChangeDependencies() {
    print(RendererBinding.instance.sendFramesToEngine); //TODO: remove
    RendererBinding.instance.allowFirstFrame();
    print(RendererBinding.instance.sendFramesToEngine); //todo: remove
    super.didChangeDependencies();
  }

  void allowFirstFrame() {
    if (RendererBinding.instance.sendFramesToEngine == false) {
      RendererBinding.instance.allowFirstFrame();
    }
  }

  @override
  void dispose() {
    _deviceTypeNotifier.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Backend>(
        future: _appLoader,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            //TODO: load splash here
            return Center(child: CircularProgressIndicator.adaptive());
          } else {
            return BackendInheritedWidget(
              backend: snapshot.requireData,
              child: MainApp.app(
                isIOS: kIsWeb ? false : Platform.isIOS,
                config: snapshot.data!.config,
              ),
            );
          }
        });
  }
}

abstract class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // Factory constructor to handle different platforms
  factory MainApp.app({bool? isIOS, required FlavorConfig config}) {
    if (isIOS ?? false) {
      return MainIosApp(
        config: config,
      );
    } else {
      return MainAndroidApp(
        config: config,
      );
    }
  }
}

class MainAndroidApp extends MainApp {
  const MainAndroidApp({required this.config, super.key});
  final FlavorConfig config;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: config.appName,
      home: AntinnaDeviceTypeBuilder(builder: (BuildContext context,
          DeviceTypeOrientationState deviceType, Widget? child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Android App'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    'This is the Android app on ${deviceType.deviceType} having ${deviceType.orientation}, may be ${deviceType.isPhone} ${config.flavor.name}',
                    textAlign: TextAlign.center),
                CircularProgressIndicator.adaptive(),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class MainIosApp extends MainApp {
  const MainIosApp({required this.config, super.key});

  final FlavorConfig config;

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Cupertino App'),
        ),
        child: Center(
          child: ElevatedButton(
            child: CircularProgressIndicator.adaptive(),
            onPressed: () {
              // Add your onPressed code here!
            },
          ),
        ),
      ),
    );
  }
}
