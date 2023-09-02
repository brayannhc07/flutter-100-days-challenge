import 'package:day_07/button_animation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ButtonAnimation(
              primaryColor: Color.fromRGBO(57, 92, 249, 1),
              darkPrimaryColor: Color.fromRGBO(44, 78, 233, 1),
            ),
            const SizedBox(height: 20),
            ButtonAnimation(
              primaryColor: Colors.yellow.shade700,
              darkPrimaryColor: Colors.yellow.shade800,
            ),
            const SizedBox(height: 20),
            ButtonAnimation(
              primaryColor: Colors.green.shade400,
              darkPrimaryColor: Colors.green.shade600,
            ),
            const SizedBox(height: 20),
            ButtonAnimation(
              primaryColor: Colors.red.shade700,
              darkPrimaryColor: Colors.red.shade800,
            )
          ],
        ),
      ),
    );
  }
}
