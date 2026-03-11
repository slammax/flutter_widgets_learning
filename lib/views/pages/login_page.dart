import 'package:flutter/material.dart';
import 'package:flutter_widgets/views/widgets/hero_widget.dart';
import 'package:flutter_widgets/views/widgets_tree.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  String confirmedEmail = '123';
  String confirmedPasswod = '456';

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              HeroWidget(title: 'Login'),
              SizedBox(height: 20),
              TextField(
                controller: controllerEmail,
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onEditingComplete: () {
                  setState(() {});
                },
              ),
              SizedBox(height: 20),
              TextField(
                controller: controllerPassword,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onEditingComplete: () {
                  setState(() {});
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(.infinity, 40),
                ),
                onPressed: () {
                  onLoginPressed();
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onLoginPressed() {
    if (confirmedEmail == controllerEmail.text &&
        confirmedPasswod == controllerPassword.text) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetsTree();
          },
        ),
      );
    }
  }
}
