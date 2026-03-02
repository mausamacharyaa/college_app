import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        title: Text("Hey Mausam!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26)),
        elevation: 10,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Center(
              child: Text("Menu", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
            ),
            SizedBox(height: 15),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                children: [
                  buildCard("Attendance", Icons.check_circle),
                  buildCard("Syllabus", Icons.book),
                  buildCard("Notice", Icons.notifications),
                  buildCard("Notes", Icons.note),
                  buildCard("Contact Teacher", Icons.person),
                  buildCard("Send Homework", Icons.send),
                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20.0),
        child: FloatingActionButton(
          onPressed: () {
            debugPrint("Send Mail");
          },
          child: Icon(Icons.mail),
        ),
      ),
    );
  }
}

Widget buildCard(String title, IconData icon) {
  return Card(
    elevation: 6,
    shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16)),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40),
          SizedBox(height: 15),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
