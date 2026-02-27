import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  final double borderRadius;
  final double width;

  const HeroWidget({super.key, this.borderRadius = 50, this.width = .infinity});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'hero1',
      child: Container(
        height: 200,
        width: .infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: const Color.fromARGB(65, 0, 150, 135),
        ),
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}
