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
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          leading: Icon(Icons.adb),
          title: Text('Title of AppBar'),
        ),
        body: Stack(
          children: [
            Center(child: SizedBox(height: 300, child: Text('Flutter'))),
            ListTile(
              tileColor: Colors.redAccent,
              leading: Icon(Icons.yard_outlined),
              title: Text('data'),
              trailing: Text('trailing'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
