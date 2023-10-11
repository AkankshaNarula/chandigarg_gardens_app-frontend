import 'package:flutter/material.dart';
import 'package:tree_app/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App',
      theme: ThemeData(
        // Your custom theme here
        primarySwatch: Colors.lightGreen,
      ),
      home: WelcomePage(),
    );
  }
}
