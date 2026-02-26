import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20, width: 20),
          Icon(Icons.school, size: 23),
          SizedBox(height: 20, width: 20),
          Icon(Icons.school),
          SizedBox(height: 20, width: 20),
          Icon(Icons.school, size: 23),
          SizedBox(height: 20, width: 20),
          TextField(
            textAlign: TextAlign.center,
            
          ),
        ],
      ),
    );
  }
}
