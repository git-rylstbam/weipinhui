import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weipinhui/routes.dart';
import 'package:weipinhui/theme.dart';

void main() => runApp(const _MyApp());

class _MyApp extends StatefulWidget {
  const _MyApp();

  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  final _controller = ThemeController();

  @override
  Widget build(BuildContext context) => GetMaterialApp(
    title: 'Study From 唯品会',
    debugShowCheckedModeBanner: false,
    theme: _controller.light,
    getPages: Routes.routes,
    initialRoute: Routes.home,
    scrollBehavior: _MyScrollBehavior(),
  );
}

class _MyScrollBehavior extends ScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}
