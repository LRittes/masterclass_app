import 'package:flutter/material.dart';
import 'package:masterclass_app/shared/theme/themes.dart';
import 'package:masterclass_app/shared/theme/theme_manager.dart';
import 'package:masterclass_app/view/home/home_page.dart';

void main() async {
  // runApp(const SplashPage());
  // await Future.delayed(const Duration(seconds: 2));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ThemeManager _themeManager = ThemeManager();

  @override
  void initState() {
    super.initState();
    _themeManager.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Materclass App',
      theme: themeDataLight,
      darkTheme: themeDataDark,
      themeMode: _themeManager.themeMode,
      home: HomePage(themeManager: _themeManager),
      debugShowCheckedModeBanner: false,
    );
  }
}
