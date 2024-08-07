import 'package:antinna/bootstrap.dart';
import 'package:antinna/config/config.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/semantics.dart';

void main(List<String> args) {
  runApp(AntinnaApp(config: FlavorConfig()));
  // SemanticsBinding.instance.ensureSemantics();
}
