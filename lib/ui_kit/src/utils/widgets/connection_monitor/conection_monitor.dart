// // import 'package:flutter/material.dart';
// // import 'package:connectivity_plus/connectivity_plus.dart';

// // @immutable
// // class ConnectionMonitor extends StatefulWidget {
// //   const ConnectionMonitor({
// //     super.key,
// //     required this.child,
// //   });

// //   final Widget child;

// //   @override
// //   State<ConnectionMonitor> createState() => _ConnectionMonitorState();
// // }

// // class _ConnectionMonitorState extends State<ConnectionMonitor> {
// //   late final _connectivity = _connectivityStream();

// //   Stream<ConnectivityResult> _connectivityStream() async* {
// //     final connectivity = Connectivity();
// //     yield await connectivity.checkConnectivity();
// //     yield* connectivity.onConnectivityChanged;
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return StreamBuilder(
// //       stream: _connectivity,
// //       builder:
// //           (BuildContext context, AsyncSnapshot<ConnectivityResult> snapshot) {
// //         if (snapshot.connectionState != ConnectionState.active) {
// //           return widget.child;
// //         }
// //         final result = snapshot.requireData;
// //         return _ConnectivityBannerHost(
// //           isConnected: result != ConnectivityResult.none,
// //           banner: Theme(
// //             data: ThemeData.light(useMaterial3: true),
// //             child: Material(
// //               color: Colors.red,
// //               child: Padding(
// //                 padding: EdgeInsets.symmetric(vertical: 4.0) +
// //                     EdgeInsets.symmetric(horizontal: 12.0),
// //                 child: const Text(
// //                   'Please check your internet connection',
// //                   style: TextStyle(color: Colors.white),
// //                   textAlign: TextAlign.center,
// //                 ),
// //               ),
// //             ),
// //           ),
// //           child: widget.child,
// //         );
// //       },
// //     );
// //   }
// // }

// // @immutable
// // class _ConnectivityBannerHost extends StatefulWidget {
// //   const _ConnectivityBannerHost({
// //     required this.isConnected,
// //     required this.banner,
// //     required this.child,
// //   });

// //   final bool isConnected;
// //   final Widget banner;
// //   final Widget child;

// //   @override
// //   State<_ConnectivityBannerHost> createState() =>
// //       _ConnectivityBannerHostState();
// // }

// // class _ConnectivityBannerHostState extends State<_ConnectivityBannerHost>
// //     with SingleTickerProviderStateMixin {
// //   late final AnimationController _controller;
// //   late final Animation<double> _animation;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _controller = AnimationController(
// //       duration: const Duration(milliseconds: 300),
// //       value: widget.isConnected ? 0.0 : 1.0,
// //       vsync: this,
// //     );
// //     _animation = CurvedAnimation(
// //       parent: _controller,
// //       curve: Curves.fastOutSlowIn,
// //     );
// //   }

// //   @override
// //   void didUpdateWidget(covariant _ConnectivityBannerHost oldWidget) {
// //     super.didUpdateWidget(oldWidget);
// //     if (oldWidget.isConnected != widget.isConnected) {
// //       if (widget.isConnected) {
// //         _controller.reverse();
// //       } else {
// //         _controller.forward();
// //       }
// //     }
// //   }

// //   @override
// //   void dispose() {
// //     _controller.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return CustomMultiChildLayout(
// //       delegate: _ConnectivityBannerHostDelegate(_animation),
// //       children: [
// //         LayoutId(
// //           id: _ConnectivityBannerHostWidgetId.child,
// //           child: widget.child,
// //         ),
// //         LayoutId(
// //           id: _ConnectivityBannerHostWidgetId.banner,
// //           child: widget.banner,
// //         ),
// //       ],
// //     );
// //   }
// // }

// // enum _ConnectivityBannerHostWidgetId { child, banner }

// // class _ConnectivityBannerHostDelegate extends MultiChildLayoutDelegate {
// //   _ConnectivityBannerHostDelegate(this._animation)
// //       : super(relayout: _animation);

// //   final Animation<double> _animation;

// //   @override
// //   void performLayout(Size size) {
// //     layoutChild(
// //         _ConnectivityBannerHostWidgetId.child, BoxConstraints.tight(size));
// //     positionChild(_ConnectivityBannerHostWidgetId.child, Offset.zero);

// //     final bannerSize = layoutChild(
// //       _ConnectivityBannerHostWidgetId.banner,
// //       BoxConstraints.tightFor(width: size.width),
// //     );
// //     positionChild(
// //       _ConnectivityBannerHostWidgetId.banner,
// //       Offset(
// //         0.0,
// //         size.height - (_animation.value * bannerSize.height),
// //       ),
// //     );
// //   }

// //   @override
// //   bool shouldRelayout(covariant _ConnectivityBannerHostDelegate oldDelegate) {
// //     return _animation != oldDelegate._animation;
// //   }
// // }

// /////////////////\\\
// ///
// ///
// ///
// ///// import 'dart:async';
// // import 'dart:io';

// // import 'package:dependencies/dependencies.dart';
// // import 'package:flutter/material.dart';
// // import 'package:settings/settings.dart';

// // import 'app/app.dart';

// // void runAppWithRecordError() {
// //   FlutterError.onError = (details) {
// //     if (details.exception is! SocketException &&
// //         details.exception is! FirebaseException) {
// //       GetIt.I<RecordErrorUseCase>().call(
// //         RecordErrorParams(
// //           exception: details.exception is Exception
// //               ? details.exception as Exception
// //               : null,
// //           level: SentryLevel.info,
// //           tags: const ['unhandle-error', 'flutter-error'],
// //           stackTrace: details.stack,
// //         ),
// //       );
// //     }
// //   };

// //   const app = App();
// //   runZonedGuarded(
// //     () => runApp(app),
// //     (exception, stackTrace) {
// //       GetIt.I<RecordErrorUseCase>().call(
// //         RecordErrorParams(
// //           exception: exception is Exception ? exception : null,
// //           level: SentryLevel.info,
// //           tags: const ['unhandle-error', 'flutter-error'],
// //           stackTrace: stackTrace,
// //         ),
// //       );
// //     },
// //   );
// // }

// import 'dart:io';

// import 'package:antinna/config/config.dart';
// import 'package:antinna/ui_kit/src/utils/widgets/banner_host.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

// import 'package:intl/date_symbol_data_local.dart';
// import 'package:intl/intl.dart' hide TextDirection;

// import 'ui_kit/src/inherited/backed_inherted_widget.dart';
// import 'ui_kit/src/utils/component_init.dart';
// // import 'ui_kit/src/utils/widgets/connection_monitor/conection_monitor.dart';

// class AntinnaApp extends StatefulWidget {
//   const AntinnaApp({super.key, required this.config});

//   final FlavorConfig config;
//   @override
//   State<AntinnaApp> createState() => _AntinnaAppState();
// }

// class _AntinnaAppState extends State<AntinnaApp> {
//   // Future<void>? _splashLoader;
//   // Backend? _backend;
//   final _navigatorKey = GlobalKey<NavigatorState>();
//   NavigatorState? get navigatorState => _navigatorKey.currentState;
//   final _deviceTypeNotifier = DeviceTypeOrientationNotifier();
//   late Future<Backend> _appLoader;

//   late final _connectivity = _connectivityStream();

//   Stream<ConnectivityResult> _connectivityStream() async* {
//     final connectivity = Connectivity();
//     final result = await connectivity.checkConnectivity();
//     yield result.first;
//     yield* connectivity.onConnectivityChanged
//         .expand((results) => results); // Flatten the stream
//   }

//   @override
//   void initState() {
//     _deviceTypeNotifier.init();
//     RendererBinding.instance.deferFirstFrame();
//     super.initState();
//     Intl.defaultLocale = PlatformDispatcher.instance.locale
//         .toLanguageTag(); //usefull For Manish //! TODO: support
//     _appLoader = _loadApp();
//   }

//   Future<Backend> _loadApp() async {
//     await Future.delayed(Duration(seconds: 5)); //TODO: remove in future
//     if (widget.config.flavor == Flavor.development) {
//       // EquatableConfig.stringify = true;
//     }
//     await initializeDateFormatting(); //usefull For Manish //! TODO: support
//     final backend = await Backend.init(
//       widget.config,
//       _deviceTypeNotifier,
//     );
//     // _isLoggedIn = backend.authRepo.isLoggedIn;
//     // _subIsLoggedIn = backend
//     //     .authRepo //
//     //     .streamIsLoggedIn
//     //     .listen(_onLoginStateChanged); //usefull For Manish //! TODO: support
//     // if (mounted) {
//     //   await MainScreen.precacheImages();
//     // }
//     return backend;
//   }

//   @override
//   void didChangeDependencies() {
//     print(RendererBinding.instance.sendFramesToEngine); //TODO: remove
//     RendererBinding.instance.allowFirstFrame();
//     print(RendererBinding.instance.sendFramesToEngine); //todo: remove
//     super.didChangeDependencies();
//   }

//   void allowFirstFrame() {
//     if (RendererBinding.instance.sendFramesToEngine == false) {
//       RendererBinding.instance.allowFirstFrame();
//     }
//   }

//   @override
//   void dispose() {
//     _deviceTypeNotifier.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<ConnectivityResult>(
//         stream: _connectivity,
//         builder: (BuildContext context,
//             AsyncSnapshot<ConnectivityResult> streamSnapshot) {
//           if (streamSnapshot.connectionState != ConnectionState.active) {
//             return CircularProgressIndicator(); //TODO loading
//           } else {
//             final result = streamSnapshot.requireData;
//             return FutureBuilder<Backend>(
//               builder: (context, futureSnapshot) {
//                 if (futureSnapshot.connectionState != ConnectionState.done) {
//                   //TODO: load splash here
//                   return Center(child: CircularProgressIndicator.adaptive());
//                 } else {}
//                 return BackendInheritedWidget(
//                   backend: futureSnapshot.requireData,
//                   child: FutureBuilder<Backend>(
//                       future: _appLoader,
//                       builder: (context, futureSnapshot) {
//                         if (futureSnapshot.connectionState !=
//                             ConnectionState.done) {
//                           //TODO: load splash here
//                           return Center(
//                               child: CircularProgressIndicator.adaptive());
//                         } else {
//                           return BannerHost(
//                             isConnected: result != ConnectivityResult.none,
//                             banner: Directionality(
//                               textDirection: TextDirection.ltr,
//                               child: Theme(
//                                   data: ThemeData.from(
//                                       colorScheme: ColorScheme.fromSeed(
//                                           seedColor: Colors.red)),
//                                   child: Material(
//                                     color: (result != ConnectivityResult.none)
//                                         ? Colors.green
//                                         : Colors.red,
//                                     child: Padding(
//                                       padding: const EdgeInsets.symmetric(
//                                           vertical: 4.0, horizontal: 12.0),
//                                       child: Text(
//                                         (result != ConnectivityResult.none)
//                                             ? "Connected"
//                                             : 'No Internet',
//                                         style: const TextStyle(
//                                             color: Colors.white),
//                                         textAlign: TextAlign.center,
//                                       ),
//                                     ),
//                                   )),
//                             ),
//                             child: MainApp.app(
//                               isIOS: kIsWeb ? false : Platform.isIOS,
//                               config: futureSnapshot.data!.config,
//                             ),
//                           );
//                         }
//                       }),
//                 );
//               },
//             );
//           }
//         });
//   }
// }

// abstract class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   // Factory constructor to handle different platforms
//   factory MainApp.app({bool? isIOS, required FlavorConfig config}) {
//     if (isIOS ?? false) {
//       return MainIosApp(
//         config: config,
//       );
//     } else {
//       return MainAndroidApp(
//         config: config,
//       );
//     }
//   }
// }

// class MainAndroidApp extends MainApp {
//   const MainAndroidApp({required this.config, super.key});
//   final FlavorConfig config;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: config.appName,
//       home: AntinnaDeviceTypeBuilder(builder: (BuildContext context,
//           DeviceTypeOrientationState deviceType, Widget? child) {
//         return Scaffold(
//           appBar: AppBar(
//             title: Text('Android App'),
//           ),
//           body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                     'This is the Android app on ${deviceType.deviceType} having ${deviceType.orientation}, may be ${deviceType.isPhone} ${config.flavor.name}',
//                     textAlign: TextAlign.center),
//                 CircularProgressIndicator.adaptive(),
//               ],
//             ),
//           ),
//         );
//       }),
//     );
//   }
// }

// class MainIosApp extends MainApp {
//   const MainIosApp({required this.config, super.key});

//   final FlavorConfig config;

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoApp(
//       home: CupertinoPageScaffold(
//         navigationBar: CupertinoNavigationBar(
//           middle: Text('Cupertino App'),
//         ),
//         child: Center(
//           child: ElevatedButton(
//             child: CircularProgressIndicator.adaptive(),
//             onPressed: () {
//               // Add your onPressed code here!
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

// ////////////////
// // ///
// // ///
// // ///
// // ///// import 'dart:async';
// // // import 'dart:io';

// // // import 'package:dependencies/dependencies.dart';
// // // import 'package:flutter/material.dart';
// // // import 'package:settings/settings.dart';

// // // import 'app/app.dart';

// // // void runAppWithRecordError() {
// // //   FlutterError.onError = (details) {
// // //     if (details.exception is! SocketException &&
// // //         details.exception is! FirebaseException) {
// // //       GetIt.I<RecordErrorUseCase>().call(
// // //         RecordErrorParams(
// // //           exception: details.exception is Exception
// // //               ? details.exception as Exception
// // //               : null,
// // //           level: SentryLevel.info,
// // //           tags: const ['unhandle-error', 'flutter-error'],
// // //           stackTrace: details.stack,
// // //         ),
// // //       );
// // //     }
// // //   };

// // //   const app = App();
// // //   runZonedGuarded(
// // //     () => runApp(app),
// // //     (exception, stackTrace) {
// // //       GetIt.I<RecordErrorUseCase>().call(
// // //         RecordErrorParams(
// // //           exception: exception is Exception ? exception : null,
// // //           level: SentryLevel.info,
// // //           tags: const ['unhandle-error', 'flutter-error'],
// // //           stackTrace: stackTrace,
// // //         ),
// // //       );
// // //     },
// // //   );
// // // }

// // import 'dart:io';

// // import 'package:antinna/config/config.dart';
// // import 'package:antinna/ui_kit/src/utils/widgets/banner_host.dart';
// // import 'package:connectivity_plus/connectivity_plus.dart';
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/foundation.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter/rendering.dart';

// // import 'package:intl/date_symbol_data_local.dart';
// // import 'package:intl/intl.dart' hide TextDirection;

// // import 'ui_kit/src/inherited/backed_inherted_widget.dart';
// // import 'ui_kit/src/utils/component_init.dart';
// // // import 'ui_kit/src/utils/widgets/connection_monitor/conection_monitor.dart';

// // class AntinnaApp extends StatefulWidget {
// //   const AntinnaApp({super.key, required this.config});

// //   final FlavorConfig config;
// //   @override
// //   State<AntinnaApp> createState() => _AntinnaAppState();
// // }

// // class _AntinnaAppState extends State<AntinnaApp> {
// //   // Future<void>? _splashLoader;
// //   // Backend? _backend;
// //   final _navigatorKey = GlobalKey<NavigatorState>();
// //   NavigatorState? get navigatorState => _navigatorKey.currentState;
// //   final _deviceTypeNotifier = DeviceTypeOrientationNotifier();
// //   late Future<Backend> _appLoader;

// //   late final _connectivity = _connectivityStream();

// //   Stream<ConnectivityResult> _connectivityStream() async* {
// //     final connectivity = Connectivity();
// //     final result = await connectivity.checkConnectivity();
// //     yield result.first;
// //     yield* connectivity.onConnectivityChanged
// //         .expand((results) => results); // Flatten the stream
// //   }

// //   @override
// //   void initState() {
// //     _deviceTypeNotifier.init();
// //     RendererBinding.instance.deferFirstFrame();
// //     super.initState();
// //     Intl.defaultLocale = PlatformDispatcher.instance.locale
// //         .toLanguageTag(); //usefull For Manish //! TODO: support
// //     _appLoader = _loadApp();
// //   }

// //   Future<Backend> _loadApp() async {
// //     await Future.delayed(Duration(seconds: 5)); //TODO: remove in future
// //     if (widget.config.flavor == Flavor.development) {
// //       // EquatableConfig.stringify = true;
// //     }
// //     await initializeDateFormatting(); //usefull For Manish //! TODO: support
// //     final backend = await Backend.init(
// //       widget.config,
// //       _deviceTypeNotifier,
// //     );
// //     // _isLoggedIn = backend.authRepo.isLoggedIn;
// //     // _subIsLoggedIn = backend
// //     //     .authRepo //
// //     //     .streamIsLoggedIn
// //     //     .listen(_onLoginStateChanged); //usefull For Manish //! TODO: support
// //     // if (mounted) {
// //     //   await MainScreen.precacheImages();
// //     // }
// //     return backend;
// //   }

// //   @override
// //   void didChangeDependencies() {
// //     print(RendererBinding.instance.sendFramesToEngine); //TODO: remove
// //     RendererBinding.instance.allowFirstFrame();
// //     print(RendererBinding.instance.sendFramesToEngine); //todo: remove
// //     super.didChangeDependencies();
// //   }

// //   void allowFirstFrame() {
// //     if (RendererBinding.instance.sendFramesToEngine == false) {
// //       RendererBinding.instance.allowFirstFrame();
// //     }
// //   }

// //   @override
// //   void dispose() {
// //     _deviceTypeNotifier.dispose();

// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return FutureBuilder<Backend>( //StreamBuilder( stream: _connectivity,
// //                   // builder: (BuildContext context,
// //                   //     AsyncSnapshot<ConnectivityResult> streamSnapshot) {
// //         future: _appLoader,
// //         builder: (context, futureSnapshot) {
// //           if (futureSnapshot.connectionState != ConnectionState.done) {
// //             //TODO: load splash here
// //             return Center(child: CircularProgressIndicator.adaptive());
// //           } else {
// //             return BackendInheritedWidget(
// //               backend: futureSnapshot.requireData,
// //               child: StreamBuilder( //FutureBuilder<Backend>(
// //                   stream: _connectivity,
// //                   builder: (BuildContext context,
// //                       AsyncSnapshot<ConnectivityResult> streamSnapshot) {
// //                     if (streamSnapshot.connectionState !=
// //                         ConnectionState.active) {
// //                       return CircularProgressIndicator();
// //                     } else {
// //                       final result = streamSnapshot.requireData;
// //                       return BannerHost(
// //                         isConnected: result != ConnectivityResult.none,
// //                         banner: Directionality(
// //                           textDirection: TextDirection.ltr,
// //                           child: Theme(
// //                               data: ThemeData.from(
// //                                   colorScheme: ColorScheme.fromSeed(
// //                                       seedColor: Colors.red)),
// //                               child: Material(
// //                                 color: (result != ConnectivityResult.none)
// //                                     ? Colors.green
// //                                     : Colors.red,
// //                                 child: Padding(
// //                                   padding: const EdgeInsets.symmetric(
// //                                       vertical: 4.0, horizontal: 12.0),
// //                                   child: Text(
// //                                     (result != ConnectivityResult.none)
// //                                         ? "Connected"
// //                                         : 'No Internet',
// //                                     style: const TextStyle(color: Colors.white),
// //                                     textAlign: TextAlign.center,
// //                                   ),
// //                                 ),
// //                               )),
// //                         ),
// //                         child: MainApp.app(
// //                           isIOS: kIsWeb ? false : Platform.isIOS,
// //                           config: futureSnapshot.data!.config,
// //                         ),
// //                       );
// //                     }
// //                   }),
// //             );
// //           }
// //         });
// //   }
// // }

// // abstract class MainApp extends StatelessWidget {
// //   const MainApp({super.key});

// //   // Factory constructor to handle different platforms
// //   factory MainApp.app({bool? isIOS, required FlavorConfig config}) {
// //     if (isIOS ?? false) {
// //       return MainIosApp(
// //         config: config,
// //       );
// //     } else {
// //       return MainAndroidApp(
// //         config: config,
// //       );
// //     }
// //   }
// // }

// // class MainAndroidApp extends MainApp {
// //   const MainAndroidApp({required this.config, super.key});
// //   final FlavorConfig config;
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: config.appName,
// //       home: AntinnaDeviceTypeBuilder(builder: (BuildContext context,
// //           DeviceTypeOrientationState deviceType, Widget? child) {
// //         return Scaffold(
// //           appBar: AppBar(
// //             title: Text('Android App'),
// //           ),
// //           body: Center(
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Text(
// //                     'This is the Android app on ${deviceType.deviceType} having ${deviceType.orientation}, may be ${deviceType.isPhone} ${config.flavor.name}',
// //                     textAlign: TextAlign.center),
// //                 CircularProgressIndicator.adaptive(),
// //               ],
// //             ),
// //           ),
// //         );
// //       }),
// //     );
// //   }
// // }

// // class MainIosApp extends MainApp {
// //   const MainIosApp({required this.config, super.key});

// //   final FlavorConfig config;

// //   @override
// //   Widget build(BuildContext context) {
// //     return CupertinoApp(
// //       home: CupertinoPageScaffold(
// //         navigationBar: CupertinoNavigationBar(
// //           middle: Text('Cupertino App'),
// //         ),
// //         child: Center(
// //           child: ElevatedButton(
// //             child: CircularProgressIndicator.adaptive(),
// //             onPressed: () {
// //               // Add your onPressed code here!
// //             },
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
