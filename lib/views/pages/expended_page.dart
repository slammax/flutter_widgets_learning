import 'package:flutter/material.dart';

class ExpendedPage extends StatelessWidget {
  const ExpendedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Flexible(child: Container(color: Colors.teal, height: 20)),
              Flexible(
                child: Container(
                  color: Colors.orange,
                  height: 20,
                  child: Text('data'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
