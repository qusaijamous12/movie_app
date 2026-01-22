import 'package:flutter/material.dart';

import 'core/constant/barrier_files.dart';
import 'features/splash_view.dart';
import 'main.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      debugShowCheckedModeBanner: false,
      theme:AppTheme.lightTheme,
      navigatorKey: navKey,
      home:const SplashView(),
    );
  }
}