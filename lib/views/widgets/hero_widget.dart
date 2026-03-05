import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  final double borderRadius;
  final double width;

  const HeroWidget({super.key, this.borderRadius = 50, this.width = .infinity});

  @override
  Widget build(BuildContext context) {
    return Hero(tag: 'hero1', child: Image.asset('assets/images/logo.png'));
  }
}
