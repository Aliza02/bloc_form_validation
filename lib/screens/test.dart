import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Hello, World!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
