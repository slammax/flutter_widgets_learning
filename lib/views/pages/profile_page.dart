import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: .center,
        mainAxisSize: .min,
        children: [
          SizedBox(
            height: 500,
            width: .infinity,
            child: Lottie.asset('assets/lotties/error_cat.json'),
          ),
        ],
      ),
    );
  }
}
