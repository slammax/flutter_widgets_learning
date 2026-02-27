import 'package:flutter/material.dart';
import 'package:flutter_widgets/data/notifiers.dart';
import 'package:flutter_widgets/theme/dark_theme.dart';
import 'package:flutter_widgets/theme/light_theme.dart';
import 'package:flutter_widgets/views/pages/welcome_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDark, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: isDark ? ThemeMode.dark : ThemeMode.light,

          home: WelcomePage(),
        );
      },
    );
  }
}
