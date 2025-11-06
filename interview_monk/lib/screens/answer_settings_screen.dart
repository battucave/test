import 'package:flutter/material.dart';

class AnswerSettingsScreen extends StatefulWidget {
  const AnswerSettingsScreen({super.key});

  @override
  State<AnswerSettingsScreen> createState() => _AnswerSettingsScreenState();
}

class _AnswerSettingsScreenState extends State<AnswerSettingsScreen> {
  final List<bool> _selections = [true, false];

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
          const SizedBox(height: 16.0),
          ToggleButtons(
            isSelected: _selections,
            onPressed: (int index) {
              setState(() {
                for (int i = 0; i < _selections.length; i++) {
                  _selections[i] = i == index;
                }
              });
            },
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('STAR'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('PAR'),
              ),
            ],
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
