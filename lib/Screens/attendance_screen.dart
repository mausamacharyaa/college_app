import 'package:flutter/material.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blueGrey[100]),

              child: Center(
                child: Text('82%',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
