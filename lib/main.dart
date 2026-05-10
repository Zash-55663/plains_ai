import 'package:flutter/material.dart';
import 'package:plains_ai/core/theme/app_theme.dart';
import 'package:plains_ai/data/repositories/task_provider.dart';
import 'package:plains_ai/presentation/screens/splash/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => TaskProvider())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: planisTheme,
      home: SplashScreen(),
    );
  }
}
