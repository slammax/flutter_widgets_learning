import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  final double borderRadius;
  final double width;
  final String title;

  const HeroWidget({
    super.key,
    this.borderRadius = 50,
    this.width = .infinity,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(tag: 'hero1', child: Image.asset('assets/images/bg.avif')),
        Text(title),
      ],
    );
  }
}
