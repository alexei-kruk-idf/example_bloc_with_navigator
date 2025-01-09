import 'package:example_bloc_with_navigator/di/app_injector.dart';
import 'package:example_bloc_with_navigator/screen/app/app_screen.dart';
import 'package:flutter/material.dart';

void main() {
  initAppDi();
  runApp(const App());
}
