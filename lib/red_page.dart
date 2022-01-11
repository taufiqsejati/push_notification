import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RedPage extends StatefulWidget {
  const RedPage({Key? key}) : super(key: key);

  @override
  State<RedPage> createState() => _RedPageState();
}

class _RedPageState extends State<RedPage> {
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(18),
          child: Center(
            child: Text('This is Red Screen'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.logout),
        onPressed: () async {
          await _auth.signOut();
          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));
          Navigator.of(context)
              .pushNamedAndRemoveUntil('login', (route) => false);
        },
      ),
    );
  }
}
