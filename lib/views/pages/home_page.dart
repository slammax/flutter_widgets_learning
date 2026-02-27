import 'package:flutter/material.dart';
import 'package:flutter_widgets/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(40),
      child: Column(
        children: [
          Container(
            height: 200,
            width: .infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color.fromARGB(65, 0, 150, 135),
            ),
            child: HeroWidget(),
          ),
        ],
      ),
    );
  }
}
