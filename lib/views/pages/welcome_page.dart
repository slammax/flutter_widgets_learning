import 'package:flutter/material.dart';
import 'package:flutter_widgets/views/pages/login_page.dart';
import 'package:flutter_widgets/views/widgets/hero_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          mainAxisAlignment: .center,
          children: [
            HeroWidget(),

            SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ),
                );
              },

              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
