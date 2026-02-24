import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/navbar_widget.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.teal, brightness: .dark),
      ),

      home: Scaffold(
        appBar: AppBar(title: Text('Flutter'), centerTitle: true),

        bottomNavigationBar: NavbarWidget(),
      ),
    );
  }
}
