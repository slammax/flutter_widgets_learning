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
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter'), centerTitle: true),
        drawer: Drawer(
          child: Column(
            children: [DrawerHeader(child: ListTile(title: Text('drawer')))],
          ),
        ),
        floatingActionButton: Column(
          mainAxisSize: .min,
          children: [
            FloatingActionButton(child: Icon(Icons.add), onPressed: () => {}),
            SizedBox(height: 10),
            FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () => {},
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          selectedIndex: 1,
          onDestinationSelected: (value) => {},
        ),
      ),
    );
  }
}
