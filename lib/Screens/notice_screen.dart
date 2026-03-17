import 'package:flutter/material.dart';

class NoticeScreen extends StatelessWidget {
  const NoticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        title: Text("Collee Notice", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29)),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back),),
        actions: [IconButton(onPressed:  () {}, icon: Icon(Icons.notifications))],
      ),

      //body
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
          ],
          
        ),
      ),
    );
  }
}
