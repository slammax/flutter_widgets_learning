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
        body: Image.network(
          'https://wallpapers.com/images/hd/doodle-cube-colorful-4k-phone-rptt6pq6aule4wtj.jpg',
          fit: .cover,
          height: .infinity,
        ),
      ),
    );
  }
}
