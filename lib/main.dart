import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(50),
          child: Stack(
            children: [
              Image.asset('assets/images/bg.jpg', fit: .cover),
              Center(child: SizedBox(height: 300, child: Text('Flutter'))),
            ],
          ),
        ),
      ),
    );
  }
}
