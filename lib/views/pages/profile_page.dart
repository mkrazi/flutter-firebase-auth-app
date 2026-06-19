import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  TextEditingController Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CircleAvatar(maxRadius: 50),
            SizedBox(height: 20),
            TextField(
              controller: Controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your name',
              ),
              onEditingComplete: () {
                setState(() {});
              },
            ),
            Text(Controller.text),
            TextField(
              controller: Controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your gender',
              ),
              onEditingComplete: () {
                setState(() {});
              },
            ),
            Text(Controller.text),
          ],
        ),
      ),
    );
  }
}
