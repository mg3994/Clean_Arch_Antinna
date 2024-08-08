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
// import 'package:component/component.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart' hide TextDirection;

import 'features/counter/counter.dart';
import 'ui_kit/app_theme.dart';
import 'ui_kit/src/inherited/backed_inherted_widget.dart';
import 'ui_kit/src/utils/component_init.dart';
// import 'ui_kit/src/utils/widgets/connection_monitor/conection_monitor.dart';

class AntinnaApp extends StatefulWidget {
  const AntinnaApp({super.key, required this.config});

  final FlavorConfig config;
  @override
  State<AntinnaApp> createState() => _AntinnaAppState();
}

class _AntinnaAppState extends State<AntinnaApp> {
  // Future<void>? _splashLoader;
  // Backend? _backend;
  final _navigatorKey = GlobalKey<NavigatorState>();
  NavigatorState? get navigatorState => _navigatorKey.currentState;
  final _deviceTypeNotifier = DeviceTypeOrientationNotifier();
  late Future<Backend> _appLoader;

  late final _connectivity = _connectivityStream();

  Stream<ConnectivityResult> _connectivityStream() async* {
    try {
      final connectivity = Connectivity();
      final result = await connectivity.checkConnectivity();
      yield result.first; //single distinct result only
      yield* connectivity.onConnectivityChanged.expand(
        (results) => results,
      ); // Flatten the stream
    } catch (e) {
      // Handle the error appropriately
      debugPrint('Connectivity error: $e');
    }
  }

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
    final backend = await Backend.init(widget.config, _deviceTypeNotifier);
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
    return StreamBuilder<ConnectivityResult>(
      stream: _connectivity,
      builder: (
        BuildContext context,
        AsyncSnapshot<ConnectivityResult> streamSnapshot,
      ) {
        if (streamSnapshot.connectionState != ConnectionState.active) {
          return CircularProgressIndicator(); //TODO load splash here
        } else {
          final result = streamSnapshot.requireData;
          return BannerHost(
            hideBanner: result != ConnectivityResult.none,
            banner: Directionality(
              textDirection: TextDirection.ltr,
              child: Theme(
                data: ThemeData.from(
                  colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
                ),
                child: Material(
                  color: (result != ConnectivityResult.none)
                      ? Colors.green
                      : Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 12.0,
                    ),
                    child: Text(
                      (result != ConnectivityResult.none)
                          ? "Connected"
                          : 'No Internet',
                      style: const TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            child: FutureBuilder<Backend>(
              future: _appLoader,
              builder: (context, futureSnapshot) {
                if (futureSnapshot.connectionState != ConnectionState.done) {
                  //TODO: load splash here
                  return Center(child: CircularProgressIndicator.adaptive());
                }
                return BackendInheritedWidget(
                  backend: futureSnapshot.requireData,
                  child: MainApp.app(
                    isIOS: kIsWeb ? false : Platform.isIOS,
                    config: futureSnapshot.data!.config,
                  ),
                  //this
                );
              },
            ),
          );
        }
      },
    );
  }
}

abstract class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // Factory constructor to handle different platforms
  factory MainApp.app({bool? isIOS, required FlavorConfig config}) {
    if (isIOS ?? false) {
      return MainIosApp(config: config);
    } else {
      return MainAndroidApp(config: config);
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
      home: AntinnaDeviceTypeBuilder(
        builder: (
          BuildContext context,
          DeviceTypeOrientationState deviceType,
          Widget? child,
        ) {
          return const CounterPage();

          //  Scaffold(
          //   bottomNavigationBar: BottomAppBar(),
          //   appBar: AppBar(title: Text('Android App')),
          //   body: Center(
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Text(
          //           'This is the Android app on ${deviceType.locales} ${deviceType.preferredLocale} ${deviceType.deviceType} having ${deviceType.orientation}, may be ${deviceType.isPhone} ${config.flavor.name},  ${deviceType.isDarkMode}',
          //           textAlign: TextAlign.center,
          //         ),
          //         CircularProgressIndicator.adaptive(),
          //       ],
          //     ),
          //   ),
          // );
        },
      ),
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
        navigationBar: CupertinoNavigationBar(middle: Text('Cupertino App')),
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
