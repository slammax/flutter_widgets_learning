import 'package:flutter/material.dart';
import 'package:flutter_widgets/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(children: [HeroWidget()]),
    );
  }
}
