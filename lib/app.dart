import 'package:flutter/material.dart';
import 'package:slider_test/config/router.dart';

class SliderTestApp extends StatelessWidget {
  const SliderTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
