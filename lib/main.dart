import 'package:flutter/material.dart';
import 'package:fly_mac/app.dart';
import 'package:fly_mac/routes/app_pages.dart';

Future<void> main() async {
  final String initialRoute = await Routes.INITIAL;
  runApp(App(
    initialRoute: initialRoute,
  ));
}
