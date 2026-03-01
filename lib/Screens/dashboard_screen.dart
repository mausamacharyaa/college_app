import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hey Mausam!", style: TextStyle(fontWeight: FontWeight.bold)),
        elevation: 10,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
      ),

      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [SizedBox(height: 20)
      Text],
      ),
    );
  }
}
