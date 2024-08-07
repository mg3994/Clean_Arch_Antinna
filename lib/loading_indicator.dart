import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'ui_kit/src/utils/widgets/loading/circular_loading.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String title = 'Hello';
  var rng = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        children: [
          AntinnaActivityIndicator(),
          CircularProgressIndicator.adaptive(),
          // ScrollConfiguration(
          //   behavior: SScrollConfiguration.of(context).copyWith(
          //     physics: const BouncingScrollPhysics(),
          //     dragDevices: {
          //       PointerDeviceKind.touch,
          //       PointerDeviceKind.mouse,
          //       PointerDeviceKind.trackpad
          //     },
          //   ),
          //   child: RefreshIndicator(
          //     triggerMode: RefreshIndicatorTriggerMode.anywhere,
          //     backgroundColor: Colors.red,
          //     onRefresh: () async => setState(() {
          //       title = 'Hey';
          //     }),
          //     child: ListView.builder(
          //       physics: const AlwaysScrollableScrollPhysics(),
          //       itemBuilder: (_, i) => Container(
          //         padding: const EdgeInsets.all(10),
          //         color: Colors.lightBlue,
          //         width: double.infinity,
          //         height: 50,
          //         child: Text(
          //           rng.nextInt(100).toString(),
          //           style: Theme.of(context).textTheme.bodyLarge!.copyWith(
          //                 color: Colors.white,
          //               ),
          //         ),
          //       ),
          //       itemCount: 200,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
