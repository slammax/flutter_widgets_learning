import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: .center,
        mainAxisSize: .max,
        children: [
          FittedBox(
            child: Text(
              'PROFILE',
              style: TextStyle(
                fontWeight: .bold,
                fontSize: 50,
                letterSpacing: 50,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
