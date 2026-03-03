import 'package:flutter/material.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Attendance', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blueGrey[100]),

                child: Center(
                  child: Text('82%', style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            SizedBox(height: 20),

            Text("Overall Attendance", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

            SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: [
                  subjectCard("Mathemtics", " 70%"),
                  subjectCard("Biology", " 95%"),
                  subjectCard("Physics", " 80%"),
                  subjectCard("Chemistry", " 100%"),
                  subjectCard("English", " 80%"),
                  subjectCard("Nepali", " 23%"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget subjectCard(String subject, String percent) {
  return Card(
    elevation: 8,
    margin: EdgeInsets.only(bottom: 15),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),

    child: ListTile(
      title: Text(subject, style: TextStyle(fontWeight: FontWeight.bold)),
      trailing: Text(percent, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
    ),
  );
}
