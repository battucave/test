import 'package:flutter/material.dart';

class AnswerSettingsScreen extends StatelessWidget {
  const AnswerSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Answer Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'Behavioral Answer Structure',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          RadioListTile(
            title: const Text('STAR'),
            subtitle: const Text('Situation, Task, Action, Result'),
            value: 'STAR',
            groupValue: 'STAR',
            onChanged: (value) {},
          ),
          RadioListTile(
            title: const Text('PAR'),
            subtitle: const Text('Problem, Action, Result'),
            value: 'PAR',
            groupValue: 'STAR',
            onChanged: (value) {},
          ),
          const SizedBox(height: 24.0),
          const Text(
            'Tone of Voice',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Wrap(
            spacing: 8.0,
            children: [
              Chip(label: const Text('Confident')),
              Chip(label: const Text('Empathetic')),
              Chip(label: const Text('Formal')),
            ],
          ),
          const SizedBox(height: 24.0),
          const Text(
            'Response Style',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Row(
            children: [
              Expanded(child: Text('Bullet Points')),
              Expanded(child: Text('Full Paragraphs')),
            ],
          ),
          const SizedBox(height: 24.0),
          const Text(
            'Answer Length',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Slider(
            value: 0.5,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
