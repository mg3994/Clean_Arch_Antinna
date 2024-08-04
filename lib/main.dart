import 'package:antinna/bootstrap.dart';

import 'package:flutter/material.dart';

import 'config/config.dart';

void main() {
  //HashStertgy //TODO
  WidgetsFlutterBinding.ensureInitialized();
  final FlavorConfig config = FlavorConfig();
  // config.flavor.name.log();
  // runApp(const MyApp());
  // await setupGlobalDI();
  // await SentryFlutter.init(
  //   (options) {
  //     options.dsn =
  //         'https://eef76dbaace44f61b1fb8bf7fbc990a1@o910762.ingest.sentry.io/5989350';
  //     options.debug = kDebugMode;
  //     options.environment = config.flavor.name;
  //     options.release =
  //         GetIt.I<GlobalConfiguration>().getValue<String>('version_name') +
  //             '-Dev';
  //     options.sampleRate = 0.25;
  //   },
  //   appRunner: () => runAppWithRecordError(),
  // );
  //dont add any extra function / method call in main function except runApp
  runApp(AntinnaApp(config: config));
}
