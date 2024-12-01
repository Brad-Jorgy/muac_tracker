import 'package:flutter/material.dart';
import 'add_child.dart';
import 'home_page.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MUAC Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'MUAC Tracker'),
          routes: {
        '/addChild': (context) => AddChildScreen(),
      },
    );
  }
}


