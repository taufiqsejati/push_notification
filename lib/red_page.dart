import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  const RedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Text('This is red screen'),
        ),
      ),
    );
  }
}
