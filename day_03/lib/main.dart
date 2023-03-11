import 'package:day_03/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'pages/starter_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: StarterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
