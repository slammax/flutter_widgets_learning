import 'package:flutter/material.dart';

class ExpendedPage extends StatelessWidget {
  const ExpendedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.teal)),
          Expanded(child: Container(color: Colors.orange)),
        ],
      ),
    );
  }
}
