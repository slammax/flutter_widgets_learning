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
      alignment: AlignmentGeometry.center,
      children: [
        Hero(
          tag: 'hero1',
          child: AspectRatio(
            aspectRatio: 1920 / 1080,
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(30),
              child: Image.asset(
                'assets/images/bg.avif',
                fit: BoxFit.cover,
                color: Colors.teal,
                colorBlendMode: .darken,
              ),
            ),
          ),
        ),
        FittedBox(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 60,
              fontWeight: .bold,
              letterSpacing: 50,
              color: Colors.teal[100],
            ),
          ),
        ),
      ],
    );
  }
}
