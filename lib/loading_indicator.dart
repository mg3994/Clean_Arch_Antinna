import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ui_kit/src/utils/widgets/loading/circular_loading.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFF303030)),
              child: CupertinoActivityIndicator(
                color: Colors.white,
              )),
          Container(
              // height: 50,
              // width: 50,
              // decoration: BoxDecoration(
              //     shape: BoxShape.circle, color: Color(0xFF303030)),
              child: AntinnaActivityIndicator(
            radius: 60,
            color: Colors.red,
            // animating: false,
          )),
        ],
      ),
    );
  }
}
