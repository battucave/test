import 'package:flutter/material.dart';

class SessionSettingsScreen extends StatelessWidget {
  const SessionSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Session Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'Question Answering',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SwitchListTile(
            title: const Text('Enable AI Suggestions'),
            value: true,
            onChanged: (value) {},
          ),
          const SizedBox(height: 24.0),
          const Text(
            'In-Session Tools',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SwitchListTile(
            title: const Text('Enable Live Transcript'),
            value: true,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
