import 'package:flutter/material.dart';

import 'challenge.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          // To view Challenge uncomment child: Challenge() line and comment ................
          child: Challenge(),
        ),
      ),
    );
  }
}
