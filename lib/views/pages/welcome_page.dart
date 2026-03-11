import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/views/pages/login_page.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: .center,
                children: [
                  DotLottieLoader.fromAsset(
                    "assets/lotties/wave.lottie",
                    frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                      if (dotlottie != null) {
                        return Lottie.memory(
                          dotlottie.animations.values.single,
                          height: 400,
                        );
                      } else {
                        return Container();
                      }
                    },
                  ),
                  FittedBox(
                    child: Text(
                      'Flutter Max',
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: .bold,
                        letterSpacing: 50,
                        color: Colors.teal[200],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  FilledButton(
                    style: FilledButton.styleFrom(
                      minimumSize: Size(.infinity, 40),
                    ),
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

                    child: Text('Get Started'),
                  ),
                  TextButton(
                    style: FilledButton.styleFrom(
                      minimumSize: Size(.infinity, 40),
                    ),
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
          ),
        ),
      ),
    );
  }
}
