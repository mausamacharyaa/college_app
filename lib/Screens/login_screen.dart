import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 170),
            Icon(Icons.school, size: 70),
            SizedBox(height: 70),
            Text("Student's Login", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            SizedBox(height: 50),
            TextField(
              decoration: InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)), gapPadding: 7),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)), gapPadding: 7),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(
                  onPressed: () {},
                  child: Text("Sign up?", style: TextStyle(color: Colors.amberAccent)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
